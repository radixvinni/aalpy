#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import argparse
import signal
from os import path, kill
from subprocess import Popen
from prettytable import PrettyTable
from psutil import pid_exists
from tinydb import TinyDB, Query

# Usage help
help = """
Simple Python Process Manager

sppm <command>

Available commands:
help - show this help message
start <file/taskid/all> [args] - start the process with optional arguments
stop <taskid/all> - stop the process
restart <taskid/all> [args] - restart the process with optional arguments
remove <taskid> - remove the process from the list
list - list all processes"""

# == Main Functions ==
# Starting the TinyDB database
db = TinyDB("/tmp/sppm_db.json")
rpTable = db.table("running_processes")
Process = Query()
 

# Simple error formatting with usage help
def sppm_error(str):
    print(help + "\n\nERROR: " + str)
    quit()


# Kill given DB process
def process_kill(proc):
    kill(int(proc["pid"]), signal.SIGTERM)
    rpTable.update({"running": 0}, (Process.id == proc["id"]))
    print("Process " + str(proc["id"]) + " stopped.")


# Function for the "stop" command
def stop_process(cmdargs):
    if not cmdargs:  # Check if arguments are missing after stop
        sppm_error("Missing taskid on \"stop\"")
    else:
        try:
            # Check if argument is "all"
            if cmdargs[0] == "all":
                # Run kill on all processes
                for proc in rpTable.all():
                    if int(proc["running"]) == 1:
                        process_kill(proc)

            # Else, check if process exists by taskid
            elif rpTable.get(Process.id == int(cmdargs[0])):
                # Check if it's running, then kill
                if int(rpTable.get(Process.id == int(cmdargs[0]))["running"]) == 0:
                    print("Process is not running.")
                else:
                    process_kill(rpTable.get(Process.id == int(cmdargs[0])))

            else:
                sppm_error("Not a valid taskid")

        # Exception for out of range or wrong argument type
        except (IndexError, TypeError, ValueError):
            sppm_error("Invalid argument for taskid")


# Function for the "list" command
def list_processes():
    # Simple table output using PrettyTable
    print("\nSimple Python Process Manager: Process List")
    outTable = PrettyTable()
    outTable.hrules = True
    outTable.field_names = ["ID", "Name", "Args", "Running", "PID", "Path"]
    # Add a PrettyTable row for each row of the rpTable
    for proc in rpTable.all():
        outTable.add_row([proc["id"], proc["name"], proc["args"], "Yes" if proc["running"] == 1 else "No",
                          proc["pid"], proc["path"]])
    print(outTable)


# Function for the "start" command
def start_process(cmdargs):
    if not cmdargs:  # Check if arguments are missing after start
        sppm_error("Missing arguments on \"start\"")
    elif path.exists(cmdargs[0]):  # Check if valid path
        if path.isfile(cmdargs[0]):  # Check if path is a file

            # File info vars
            procPath = path.abspath(cmdargs[0])
            procArgs = " ".join(cmdargs[1:])
            filename = path.basename(procPath)

            # Check if process exists on DB and if it's already running or not
            if rpTable.get((Process.path == procPath) & (Process.args == procArgs)):
                res = rpTable.get((Process.path == procPath) & (Process.args == procArgs))
                if int(res["running"]) == 1:
                    sppm_error("Process is already running with taskid " + str(res["id"]))
                else:  # If it exists on DB but isn't running
                    # Start new process and get PID
                    proc = Popen(["python"] + cmdargs, stdin=DEVNULL, stdout=DEVNULL, stderr=DEVNULL)
                    procPid = proc.pid

                    # Update DB entry PID and status
                    rpTable.update({"pid": procPid, "running": 1},
                                   (Process.path == procPath) & (Process.args == procArgs))
                    print("Process started with taskid " + str(res["id"]))
            else:  # If not on DB
                # Start new process and get PID
                proc = Popen(["python"] + cmdargs, stdin=DEVNULL, stdout=DEVNULL, stderr=DEVNULL)
                procPid = proc.pid

                # Insert or update process on the running_processes table
                biggestID = 0
                for proc in rpTable.all():
                    if int(proc["id"]) > biggestID:
                        biggestID = int(proc["id"])

                rpTable.upsert({"id": biggestID + 1, "name": filename, "pid": procPid, "path": procPath,
                                "args": " ".join(cmdargs[1:]), "running": 1},
                               (Process.path == procPath) & (Process.args == procArgs))
                print("Process started with taskid " + str(biggestID + 1))
        else:
            sppm_error("Path is not a valid file \"" + cmdargs[0] + "\"")

    # Not a valid path, user probably entered taskid
    else:
        # Exception catching for invalid arguments
        try:
            # Check if argument is "all"
            if cmdargs[0] == "all":
                # Run the process for every entry in rpTable if it's not already running
                for proc in rpTable.all():
                    if int(proc["running"]) == 0:
                        process = Popen(["python"] + [proc["path"]] + proc["args"].split(" "),
                                        stdin=DEVNULL, stdout=DEVNULL, stderr=DEVNULL)
                        rpTable.update({"running": 1, "pid": process.pid}, Process.id == proc["id"])
                        print("Process started with taskid " + str(proc["id"]))

            # Check the existence of a process with the given taskid
            elif rpTable.get(Process.id == int(cmdargs[0])):
                id = int(cmdargs[0])
                res = rpTable.get(Process.id == id)

                # Check if running
                if int(res["running"]) == 0:
                    # Check if file still exists
                    if path.isfile(res["path"]):

                        # Start the process
                        cmdargs[0] = res["path"]
                        proc = Popen(["python"] + cmdargs, stdin=DEVNULL, stdout=DEVNULL, stderr=DEVNULL)
                        rpTable.update({"running": 1, "pid": proc.pid}, Process.id == id)
                        print("Process started with taskid " + str(res["id"]))

                    else:  # File doesn't exist. Query the user on whether to remove entry or not
                        deleteInput = ""
                        while deleteInput != "y" and deleteInput != "n":
                            deleteInput = input(res["name"] +
                                                " is not available anymore. Remove process from list? (y/n) ")
                            if deleteInput != "y" and deleteInput != "n":
                                print("Invalid option.")
                        if deleteInput == "y":
                            remove_process(str(res["id"]))

                else:
                    sppm_error("Process is already running")

            else:  # User gave an invalid path or taskid
                sppm_error("Not a valid path or taskid \"" + str(cmdargs[0]) + "\"")

        except ValueError:  # Got a value error, argument is probably wrong
            sppm_error("Invalid argument for taskid or path")


# Function for the "remove" command
def remove_process(cmdargs):
    try:
        if rpTable.get(Process.id == int(cmdargs[0])):
            docid = rpTable.get(Process.id == int(cmdargs[0])).doc_id
            rpTable.remove(Process.id == int(cmdargs[0]))
            print("Removed process with taskid " + cmdargs[0])
    except ValueError:
        sppm_error("Invalid argument for taskid")

if __name__ == '__main__':
 # Argument parsing
 parser = argparse.ArgumentParser(description="Simple Python Process Manager", add_help=False, usage=help)
 parser.add_argument("command", choices=["list", "start", "stop", "restart", "help", "remove"])
 parser.add_argument("args", nargs=argparse.REMAINDER)
 args = parser.parse_args() 
 cmdargs = args.args
 
 # Check status of all saved processes and update entry if the process is not running
 for proc in rpTable.all():
    if int(proc["running"]) == 1:
        if not pid_exists(int(proc["pid"])):
            rpTable.update({"running": 0}, Process.pid == int(proc["pid"]))
 # == Command Redirection ==
 if args.command == "help":
    print(help)

 elif args.command == "start":
    start_process(cmdargs)
 
 elif args.command == "list":
    list_processes()
 
 elif args.command == "stop":
    stop_process(cmdargs)
 
 elif args.command == "restart":
    print("Restarting...")
    stop_process(cmdargs)
    start_process(cmdargs)
 
 elif args.command == "remove":
    remove_process(cmdargs)
