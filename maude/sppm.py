#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import argparse
import signal
from os import path, kill, remove
from subprocess import Popen
from prettytable import PrettyTable
from psutil import pid_exists
from tinydb import TinyDB, Query
import sys

# Usage help
help = """
python sppm.py <command>

Simple Maude Process Manager

Available commands:
help - show this help message
start <command> - start the process with optional arguments
stop <taskid/all> - stop the process
remove <taskid/all> - remove the process from the list
list - list all processes"""

# == Main Functions ==
# Starting the TinyDB database
db = TinyDB("/tmp/sppm_db.json")
rpTable = db.table("running_processes")
Process = Query()


exe = 'echo ""|LD_LIBRARY_PATH=/chroot/oldstable/root/maude/ /chroot/oldstable/lib/ld-linux.so.2 /chroot/oldstable/root/maude/maude -no-banner %s > %s 2>&1'
if sys.platform == 'darwin':
    exe = 'echo ""|./maude/maude31/maude.darwin -no-banner %s > %s 2>&1'
# Simple error formatting with usage help


def sppm_error(s):
    print("ERROR: " + s)


# Kill given DB process
def process_kill(proc):
    kill(int(proc["pid"]), signal.SIGTERM)
    rpTable.update({"running": 0}, (Process.id == proc["id"]))
    print("Process " + str(proc["id"]) + " stopped.")


# Function for the "stop" command
def stop_maude(cmdargs):
    update_maude()
    if isinstance(cmdargs, list):
        cmdargs = cmdargs[0]
    if not cmdargs:  # Check if arguments are missing after stop
        sppm_error("Missing taskid on \"stop\"")
    else:
        try:
            # Check if argument is "all"
            if cmdargs == "all":
                # Run kill on all processes
                for proc in rpTable.all():
                    if int(proc["running"]) == 1:
                        process_kill(proc)

            # Else, check if process exists by taskid
            elif rpTable.get(Process.id == int(cmdargs)):
                # Check if it's running, then kill
                if int(rpTable.get(Process.id == int(cmdargs))["running"]) == 0:
                    print("Process is not running.")
                else:
                    process_kill(rpTable.get(Process.id == int(cmdargs)))

            else:
                sppm_error("Not a valid taskid")

        # Exception for out of range or wrong argument type
        except (IndexError, TypeError, ValueError):
            sppm_error("Invalid argument for taskid")


# Function for the "list" command
def list_maude():
    update_maude()
    # Simple table output using PrettyTable
    print("\nSimple Maude Process Manager: Process List")
    outTable = PrettyTable()
    outTable.hrules = True
    outTable.field_names = ["ID", "Running", "PID", "Command"]
    # Add a PrettyTable row for each row of the rpTable
    for proc in rpTable.all():
        outTable.add_row([proc["id"], "Yes" if proc["running"] == 1 else "No",
                          proc["pid"], proc["path"]])
    print(outTable)


# Function for the "start" command


def start_maude(cmdargs):
    update_maude()
    if isinstance(cmdargs, list):
        cmdargs = cmdargs[0]
    if not cmdargs:  # Check if arguments are missing after start
        sppm_error("Missing arguments on \"start\"")
    elif isinstance(cmdargs, str) and not cmdargs.isdigit():
        procPath = (cmdargs)
        procArgs = ""
        filename = ""

        # Check if process exists on DB and if it's already running or not
        if rpTable.get((Process.path == procPath) & (Process.args == procArgs)):
            res = rpTable.get((Process.path == procPath)
                              & (Process.args == procArgs))
            if int(res["running"]) == 1:
                sppm_error(
                    "Process is already running with taskid " + str(res["id"]))
            else:  # If it exists on DB but isn't running
                """# Start new process and get PID
                proc = Popen(["python"] + cmdargs, stdin=DEVNULL,
                             stdout=DEVNULL, stderr=DEVNULL)
                procPid = proc.pid

                # Update DB entry PID and status
                rpTable.update({"pid": procPid, "running": 1},
                               (Process.path == procPath) & (Process.args == procArgs))
                print("Process started with taskid " + str(res["id"]))"""
                print("Process with taskid " +
                      str(res["id"]) + " stopped with output:")
                print(open('/tmp/out'+str(res["id"]), 'r').read())
        else:  # If not on DB
            # Insert or update process on the running_processes table
            biggestID = 0
            for proc in rpTable.all():
                if int(proc["id"]) > biggestID:
                    biggestID = int(proc["id"])

            biggestID = biggestID + 1
            infile = '/tmp/in' + str(biggestID)
            outfile = '/tmp/out' + str(biggestID)
            open(infile, 'w').write(cmdargs)
            # Start new process and get PID
            proc = Popen(['/bin/bash', '-c', exe %
                          (infile, outfile)], start_new_session=True)
            procPid = proc.pid

            rpTable.upsert({"id": biggestID, "name": filename, "pid": procPid, "path": procPath,
                            "args": procArgs, "running": 1},
                           (Process.path == procPath) & (Process.args == procArgs))
            print("Process started with taskid " + str(biggestID))

    # Not a valid path, user probably entered taskid
    else:
        # Exception catching for invalid arguments
        try:
            """# Check if argument is "all"
            if cmdargs == "all":
                # Run the process for every entry in rpTable if it's not already running
                for proc in rpTable.all():
                    if int(proc["running"]) == 0:
                        process = Popen(["python"] + [proc["path"]] + proc["args"].split(" "),
                                        stdin=DEVNULL, stdout=DEVNULL, stderr=DEVNULL)
                        rpTable.update(
                            {"running": 1, "pid": process.pid}, Process.id == proc["id"])
                        print("Process started with taskid " + str(proc["id"]))
            """
            # Check the existence of a process with the given taskid
            if rpTable.get(Process.id == int(cmdargs)):
                id = int(cmdargs)
                res = rpTable.get(Process.id == id)

                # Check if running
                if int(res["running"]) == 0:
                    """# Check if file still exists
                    if path.isfile(res["path"]):
                        # Start the process
                        cmdargs = res["path"]
                        proc = Popen(["python"] + cmdargs, stdin=DEVNULL,
                                     stdout=DEVNULL, stderr=DEVNULL)
                        rpTable.update(
                            {"running": 1, "pid": proc.pid}, Process.id == id)
                        print("Process started with taskid " + str(res["id"]))

                    else:  # File doesn't exist. Query the user on whether to remove entry or not
                        deleteInput = ""
                        while deleteInput != "y" and deleteInput != "n":
                            deleteInput = input(res["name"] +
                                                " is not available anymore. Remove process from list? (y/n) ")
                            if deleteInput != "y" and deleteInput != "n":
                                print("Invalid option.")
                        if deleteInput == "y":
                            remove_maude(str(res["id"]))
                    """
                    print("Process stopped")
                    print(open('/tmp/out'+str(res["id"]), 'r').read())
                else:
                    sppm_error("Process is already running")
            else:  # User gave an invalid path or taskid
                sppm_error("Not a valid path or taskid \"" +
                           str(cmdargs) + "\"")

        except ValueError:  # Got a value error, argument is probably wrong
            sppm_error("Invalid argument for taskid or path")


def remove_proc(i):
    remove('/tmp/out' + str(i))
    remove('/tmp/in' + str(i))
    rpTable.remove(Process.id == int(i))
    print("Removed process with taskid " + str(i))

# Function for the "remove" command


def remove_maude(cmdargs):
    if isinstance(cmdargs, list):
        cmdargs = cmdargs[0]
    try:
        if cmdargs == "all":
            stop_maude("all")
            for proc in rpTable.all():
                remove_proc(proc["id"])
        elif rpTable.get(Process.id == int(cmdargs)):
            remove_proc(cmdargs)
    except ValueError:
        sppm_error("Invalid argument for taskid")


def update_maude():
    # Check status of all saved processes and update entry if the process is not running
    for proc in rpTable.all():
        if int(proc["running"]) == 1:
            if not pid_exists(int(proc["pid"])):
                rpTable.update({"running": 0}, Process.pid == int(proc["pid"]))


if __name__ == '__main__':
    # Argument parsing
    parser = argparse.ArgumentParser(
        description="Simple Maude Process Manager", add_help=False, usage=help)
    parser.add_argument("command", choices=[
                        "list", "start", "stop", "restart", "help", "remove"])
    parser.add_argument("args", nargs=argparse.REMAINDER)
    args = parser.parse_args()
    cmdargs = args.args

    # == Command Redirection ==
    if args.command == "help":
        print(help)

    elif args.command == "start":
        start_maude(cmdargs)

    elif args.command == "list":
        list_maude()

    elif args.command == "stop":
        stop_maude(cmdargs)

    elif args.command == "remove":
        remove_maude(cmdargs)
