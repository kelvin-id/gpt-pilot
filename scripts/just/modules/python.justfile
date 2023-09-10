#Just
PYTHON:="poetry run python"

# Create and activate a virtual environment
pip-install-poetry:
    pip install poetry

# Install requirements.txt into the poetry environment
poetry-requirements:
    #!/usr/bin/env bash
    poetry add $(cat requirements.txt | tr '\n' ' ')

# Install poetry dependencies
poetry-install:
    #!/usr/bin/env bash
    poetry install
