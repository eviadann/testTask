VENV_NAME := venv_rag
PY := $(VENV_NAME)/bin/python3
PIP := $(VENV_NAME)/bin/pip3

all: venv_create

venv_create:
	python3 -m venv $(VENV_NAME)
	$(PY) -m pip install --upgrade pip
	$(PIP) install -r requirements.txt


clean:
	find . | grep -E "(__pycache__|\.pyc$$|.mypy_cache)" | xargs rm -rf
	rm -rf $(VENV_NAME)
