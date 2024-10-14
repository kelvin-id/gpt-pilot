# Startup check Dotenv file
import "scripts/just/modules/dotenv.asd"
import "scripts/just/modules/executor.asd"
import "scripts/just/modules/python.asd"
import "scripts/just/modules/gpt-projects.asd"

# Project Commands

# Create logger folder
dir-logger:
    #!/usr/bin/env bash
    [ -d "logger" ] || mkdir logger

# Start GPT Pilot
start: dir-logger
    {{PYTHON}} pilot/main.py

sqllite-up:
    docker compose -f docker/docker-compose.yml up -d

sqllite-down:
    docker compose -f docker/docker-compose.yml down

# Complete setup and start
all: pip-install-poetry poetry-requirements poetry-install start
