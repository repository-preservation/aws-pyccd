VENV=venv
PY=$(VENV)/bin/python3
PIP=$(VENV)/bin/pip
PIP_INSTALLER=get-pip.py
PIP_INSTALLER_URL=https://bootstrap.pypa.io/get-pip.py

$(VENV):
	python3 -m venv --without-pip $(VENV)

$(PIP):
	curl --silent $(PIP_INSTALLER_URL) | $(PY)
	$(PIP) install --upgrade pip

setup: $(VENV) $(PIP)
	. $(VENV)/bin/activate && \
	$(PIP) install -r requirements.txt
	conda install -c conda-forge datacube=1.3.0
clean:
	-rm -rf venv
