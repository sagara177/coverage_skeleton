coverage_skeleton
=================

python coverage sample on centos7 and using testtools.
this sample assumes python-pip, python-virtualenv, python-coverage, and httpd are installed.


setup
-----

    [root@localhost coverage_skeleton]# ls
    Makefile  README.md  skeleton  test-requirements.txt  tools
    [root@localhost coverage_skeleton]# . ./tools/install_venv
    [root@localhost coverage_skeleton]# . .venv/bin/activate
    (.venv)[root@localhost coverage_skeleton]# 


test
----

    (.venv)[root@localhost coverage_skeleton]# make


cleanup
-------

    (.venv)[root@localhost coverage_skeleton]# deactivate 
