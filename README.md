Virtualenv Tools for Shell
==========================

Introduction
------------

This shell script contains several functions I find useful for working with
python virtual environments. This can be a minimal alternative to the
virtualenvwrapper toolset. I personally like my virtual environments to be in
the same directory as my application source code, as opposed to the virtualenv
being stashed somewhere in a given directory.

Usage
-----
To load these functions, just source the shell script in your
bashrc/zshrc/whateverrc:

    source /path/to/virtualenv-tools/repo/virtualenv.sh

Creating a new virtualenv:

    mkvenv

Removing a virtualenv (relative from the current directory):

    rmvenv

Activating a virtualenv (if the virtualenv directory is in the current dir):

    activate

All these commands also accept an argument to specify the name you want the
virtualenv to have. If you do not specify a name, ".env" will be used.

License
-------

This piece of code is MIT-licensed, see the LICENSE file.
