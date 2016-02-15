.PHONY:	all clean test coverage

PYTHONPATH = skeleton:.venv/lib/python2.7/site-packages:.venv/lib64/python2.7/site-packages


all: clean test coverage

clean:
	PYTHONPATH=$(PYTHONPATH) coverage erase
	find . -name *~ -exec rm {} \;
	find . -name *.pyc -exec rm {} \;
	find . -name *.py,cover -exec rm {} \;

test:
	PYTHONPATH=$(PYTHONPATH) python -m testtools.run discover tests

coverage:
	PYTHONPATH=$(PYTHONPATH) coverage erase
	PYTHONPATH=$(PYTHONPATH) coverage run --rcfile=.coveragerc -m testtools.run discover tests
	PYTHONPATH=$(PYTHONPATH) coverage html
	[ -d /var/www/html/htmlcov ] && rm -rf /var/www/html/htmlcov
	mv ./htmlcov /var/www/html/
