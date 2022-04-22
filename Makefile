
install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt
        
lint:
	python -m pylint --fail-under=1 --rcfile .pylintrc model/ tests/ app/ -r n --msg-template="{path}:{line}: [{msg_id}({symbol}), {obj}] {msg}" > pylint_report.txt #pylint --disable=R,C model.py

format:
	black *.py

test:
	python -m pytest -vv --disable-warnings tests/ --junitxml=junit/test-results.xml --cov=. --cov-config=.coveragerc --cov-report xml:coverage.xml --cov-report term #--cov-report html:cov_html #--doctest-modules #--cov=hello test_hello.py
	
	
all: install lint test	

