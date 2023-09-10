## Justfile Documentation

---

### Installation

Follow the installation steps on the [Just Documentation](https://just.systems/man/en/chapter_4.html).

Setup your alias in bash for faster execution: `just --unstable alias j`

**Note**: we need the "--unstable" arg to be able to use !include statements.

**Quickstart**
- Build project: `j all` or `just --unstable all`
- Start: `j start` or `just --unstable start`

### Structure

The `justfile` includes:

- Loading the dotenv file
- Alias support / executor
- Python environment setup
- Database initialization
- Project start scripts

### Module Files

- `scripts/just/modules/dotenv.justfile`
- `scripts/just/modules/executor.justfile`
- `scripts/just/modules/python.justfile`

#### Dotenv Variables

Run `j` or `just --unstable` to automatically create a `.env` from `.env.example`.

Settings used are:

- `DEFAULT_DOTENV:="./pilot/.env.example"`
- `PROJECT_DOTENV:=".env"`

### Commands

| Command            | Description                                    | Usage                 |
|--------------------|------------------------------------------------|-----------------------|
| `alias REF`         | Set persistent alias `j` for Just | `just --unstable alias j`      |
| `all`               | Complete setup and start                        | `j all`            |
| `start`             | Start the GPT Pilot project                     | `j start`          |
| `init-db`           | Initialize the database                         | `j init-db`        |
| `dir-logger`        | Create `logger` directory if not exists         | `j dir-logger`     |
| `env`               | Update `.env` file                              | `j env`            |
| `me`                | Show Just executable path                       | `j me`             |
| `pip-install-poetry`| Install Poetry                                  | `j pip-install-poetry`|
| `poetry-requirements`| Install `requirements.txt` into Poetry          | `j poetry-requirements`|
| `poetry-install`    | Install Poetry dependencies                      | `j poetry-install` |
