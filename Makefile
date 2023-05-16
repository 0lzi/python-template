install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest -vv --cov=main main.py

lint:
	pylint --disable=R,C,E1120 main.py
	
format:
	black *.py

all: install lint test