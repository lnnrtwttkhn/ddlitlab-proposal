# Makefile for creating a Python virtual environment

# Name of the virtual environment
VENV_NAME = env

# Path to the Python executable
PYTHON = python3

# Create the virtual environment
$(VENV_NAME):
	$(PYTHON) -m venv $(VENV_NAME)

# Install required packages
.PHONY: install
install: $(VENV_NAME)
	$(VENV_NAME)/bin/pip install -r requirements.txt

# Delete the virtual environment
.PHONY: clean
clean:
	rm -rf $(VENV_NAME)

# Run the application
.PHONY: html
html:
	$(VENV_NAME)/bin/jupyter-book build --all docs/

.PHONY: ci
ci:
	jupyter-book build --all docs/