# Quick Reference Guide

## Available Make Commands

```bash
make help         # Show all available commands
make install      # Install dependencies (uv sync)
make test         # Run tests with coverage
make lint         # Run linting checks (ruff check)
make format       # Format code (ruff format)
make format-check # Check formatting without changes
make typecheck    # Run type checking (mypy)
make check        # Run ALL checks (lint + format-check + typecheck + test)
make clean        # Remove generated files and caches
```

## Direct UV Commands

```bash
# Install/sync dependencies
uv sync

# Run tests
uv run pytest
uv run pytest -v              # Verbose output
uv run pytest -k test_add     # Run specific test

# Linting
uv run ruff check .
uv run ruff check . --fix     # Auto-fix issues

# Formatting
uv run ruff format .
uv run ruff format --check .  # Check only

# Type checking
uv run mypy src
```

## Project Structure

```
captain_hook/
├── src/captain_hook/         # Source code
│   ├── __init__.py
│   ├── calculator.py         # Calculator module
│   ├── string_utils.py       # String utilities
│   └── py.typed              # PEP 561 marker for type stubs
├── tests/                    # Tests
│   ├── __init__.py
│   ├── test_calculator.py
│   └── test_string_utils.py
├── pyproject.toml            # Project config, dependencies, tool settings
├── uv.lock                   # Locked dependencies
├── Makefile                  # Command shortcuts
└── README.md                 # Documentation
```

## QA Tools Configured

1. **pytest** - Testing framework with coverage reporting
2. **ruff** - Fast linter and formatter (replaces black, isort, flake8, etc.)
3. **mypy** - Static type checker

## Coverage Report

After running tests, view HTML coverage report:
```bash
open htmlcov/index.html  # macOS
xdg-open htmlcov/index.html  # Linux
```

## Adding New Dependencies

```bash
# Production dependency
uv add requests

# Development dependency
uv add --dev black
```
