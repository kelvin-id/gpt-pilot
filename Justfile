# Startup check Dotenv file
import "scripts/just/modules/dotenv.just"
import "scripts/just/modules/executor.just"
import "scripts/just/modules/python.just"
import "scripts/just/modules/gpt-pilot.just"
import "scripts/just/modules/docker.just"

# Complete setup and start
init: pip-install-poetry poetry-requirements poetry-install gp-start
