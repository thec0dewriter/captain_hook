# Captain Hook

A sample Python library demonstrating best practices with comprehensive QA tooling.

## Features

- **Calculator Module**: Basic arithmetic operations (add, subtract, multiply, divide)
- **String Utilities**: String manipulation functions (reverse, palindrome check, word count)

## Development Setup

This project uses [UV](https://github.com/astral-sh/uv) for fast, reliable Python package management.

### Installation

```bash
# Install dependencies
make install
# or
uv sync
```

### Git Hooks (Recommended)

Install the pre-commit hook for automatic QA checks:

```bash
bash hooks/install.sh
```

The hook automatically runs linting, formatting, type checking, and tests before each commit. It also:
- Auto-fixes linting and formatting issues
- Integrates with GitHub Copilot CLI to suggest fixes for failures
- Prevents commits with failing tests

See [hooks/README.md](hooks/README.md) for more details.

## QA Tooling

### Testing

Run tests with coverage reporting:

```bash
make test
# or
uv run pytest
```

### Linting

Check code quality with Ruff:

```bash
make lint
# or
uv run ruff check .
```

### Formatting

Format code with Ruff:

```bash
make format
# or
uv run ruff format .
```

Check formatting without modifying files:

```bash
make format-check
# or
uv run ruff format --check .
```

### Type Checking

Run static type analysis with mypy:

```bash
make typecheck
# or
uv run mypy src
```

### Run All Checks

Run all QA checks at once:

```bash
make check
```

This runs: linting, format checking, type checking, and tests.

## Project Structure

```
captain_hook/
├── src/
│   └── captain_hook/
│       ├── __init__.py
│       ├── calculator.py
│       └── string_utils.py
├── tests/
│   ├── __init__.py
│   ├── test_calculator.py
│   └── test_string_utils.py
├── pyproject.toml
├── Makefile
└── README.md
```

## Usage

```python
from captain_hook import add, subtract, multiply, divide
from captain_hook import reverse_string, is_palindrome, count_words

# Calculator functions
result = add(5, 3)  # 8
result = divide(10, 2)  # 5.0

# String utilities
reversed_text = reverse_string("hello")  # "olleh"
is_palin = is_palindrome("racecar")  # True
word_count = count_words("hello world")  # 2
```

## Contributing

1. Install development dependencies: `make install`
2. Make your changes
3. Run checks: `make check`
4. Ensure all tests pass and code is properly formatted

## License

MIT