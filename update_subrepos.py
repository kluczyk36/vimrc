#!python3
import os, sys, subprocess

this_dir = os.path.dirname(__file__)
hgsub    = os.path.join(this_dir, '.hgsub')

with open(hgsub, 'r') as fp:
    subrepos = [line.strip() for line in fp if line.strip()]

for subrepo in subrepos:
    dir, _, repo = subrepo.partition('=')

    dir  = dir.strip()
    repo = repo.strip()[len('[git]'):]

    if os.path.exists(dir):
        print(' * Updating {0}'.format(dir))
        git_cmd    = ['pull', 'origin', 'master']
        switch_dir = True
    else:
        print(' * Cloning {0}'.format(dir))
        git_cmd    = ['clone', '--depth', '1', repo, dir]
        switch_dir = False

    git_cmd.insert(0, 'git')
    cwd = os.getcwd()
    if switch_dir:
        print(' * In directory {0}'.format(dir))
        os.chdir(dir)
    print(' * Running {0}'.format(git_cmd))
    subprocess.call(git_cmd, shell = True, stdout = sys.stdout, stderr = sys.stderr)
    if switch_dir:
        os.chdir(cwd)

    if not os.path.exists(os.path.join(dir, 'doc')):
        os.mkdir(os.path.join(dir, 'doc'))

print(' * Running helptags')
subprocess.call(['vim', '-u', 'build_helptags'], shell = True)
