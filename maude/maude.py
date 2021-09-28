from sys import platform, version_info
import pexpect
exe = '/bin/bash -c "LD_LIBRARY_PATH=/chroot/oldstable/root/maude/ /chroot/oldstable/lib/ld-linux.so.2 /chroot/oldstable/root/maude/maude"'
if platform == 'win32':
  from pexpect import popen_spawn
  pexpect.spawn = popen_spawn.PopenSpawn
  exe = './maude31/maude.exe'

def reset_maude():
 global child
 if version_info[0] > 2:
  child = pexpect.spawn(exe,encoding='utf-8')
 else:
  child = pexpect.spawn(exe)
 child.expect('Maude> ')

reset_maude()
def maude(t):
  t = t.strip()
  child.sendline(t+'\n')
  cnt = 1+t.count('> ')+t.count('\n')
  s = ''
  for j in range(cnt):
    child.expect('> ')
    s += '\n'.join(child.before.split('\n')[1:])
  #ret = '\n'.join(child.before.split('\n')[1:-1])
  child.expect('> ')
  return '\n'.join(s.split('\n')[:-1])

if __name__ == "__main__": print maude('''
fmod NAT is
  sort Nat .
  op 0 : -> Nat [ctor] .
  op s : Nat -> Nat [ctor] .
  op _+_ : Nat Nat -> Nat .
  vars N M : Nat .
  eq 0 + N = N .
  eq s(N) + M = s (N + M) .
endfm
red s(0) + s(s(0)) .
''')
