# Startup check Dotenv file
!include scripts/just/modules/dotenv.justfile
!include scripts/just/modules/executor.justfile
!include scripts/just/modules/python.justfile

# Project Commands

# Initialize database
init-db: dir-logger
    #!/usr/bin/env bash
    {{PYTHON}} pilot/db_init.py

# Create logger folder
dir-logger:
    #!/usr/bin/env bash
    [ -d "logger" ] || mkdir logger

# Start GPT Pilot
start: dir-logger
    {{PYTHON}} pilot/main.py

# Complete setup and start
all: pip-install-poetry poetry-requirements poetry-install init-db start
