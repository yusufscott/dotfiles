#!/usr/bin/env python3

import os
import sys


def discover_files():
    """ Finds the files in the repo directory that need to be linked.
    """
    files = []

    for file in os.listdir():
        if not file.startswith('.') and not file.endswith(('.md', '.py', )):
            files.append(file)

    return files

def delete_conflicting(files=[]):
    for file in files:
        user_home = os.path.expanduser('~')
        if '.{}'.format(file) in os.listdir(user_home):
            os.remove('{}/.{}'.format(user_home, file))

def link_files(files=[]):
    user_home = os.path.expanduser('~')
    for file in files:
        source = '{}/{}'.format(os.getcwd(), file)
        dest = '{}/.{}'.format(user_home, file)
        os.symlink(source, dest)

if __name__ == "__main__":
    print("Finding files...")
    files = discover_files()
    print("Deleting conflicting files...")
    delete_conflicting(files=files)
    print("Creating symlinks...")
    link_files(files=files)

