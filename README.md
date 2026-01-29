# Captain Hook 🎣

> **⚡ GitHub Copilot CLI Challenge Submission**  
> This repository is a demonstrator project for the [GitHub Copilot CLI Challenge](https://dev.to/challenges/github-2026-01-21), showcasing an intelligent git pre-commit hook system that integrates GitHub Copilot CLI for AI-powered error resolution.

## 🎯 Challenge Demonstration

**Captain Hook** demonstrates the power of GitHub Copilot CLI by creating an intelligent development workflow where:

- **QA checks run automatically** before every git commit (linting, formatting, type checking, tests)
- **Auto-fix handles common issues** (80% of problems fixed automatically)
- **GitHub Copilot CLI assists with complex problems** (20% requiring human insight)
- **Developers get AI-powered suggestions** exactly when they need them

This project serves as both a **functional Python library** with comprehensive QA tooling AND a **practical demonstration** of integrating AI assistance into everyday development workflows.

📖 **[Read the full submission](submission.md)**

---

## About This Project

A sample Python library demonstrating best practices with comprehensive QA tooling and intelligent git hooks.

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
├── src/captain_hook/          # Sample Python library
│   ├── __init__.py
│   ├── calculator.py
│   └── string_utils.py
├── tests/                     # Test suite (100% coverage)
│   ├── test_calculator.py
│   └── test_string_utils.py
├── hooks/                     # 🎣 The Star of the Show!
│   ├── pre-commit            # Intelligent git hook
│   ├── install.sh            # Easy installer
│   ├── demo.sh               # Interactive demo
│   └── README.md             # Full hook documentation
├── pyproject.toml            # Project config + QA tools
├── Makefile                  # Convenient commands
├── HOOK_SUMMARY.md           # Hook features summary
├── QUICKREF.md               # Quick reference
├── submission.md             # Challenge submission
└── README.md                 # This file
```

## 🌟 The Main Attraction: Intelligent Pre-Commit Hook

The core demonstration of this project is the **intelligent git pre-commit hook** that showcases GitHub Copilot CLI integration:

### What It Does:

1. **📋 Linting** - Auto-fixes style issues, removes unused imports
2. **🎨 Formatting** - Auto-formats code for consistency
3. **🔎 Type Checking** - Validates type hints
4. **🧪 Tests** - Ensures all tests pass

### GitHub Copilot CLI Integration:

When checks fail that can't be auto-fixed (type errors, test failures):
- Captures detailed error output
- Calls `gh copilot suggest` with error context
- Provides AI-powered fix suggestions
- Guides developers to solutions

### Try It:

```bash
# Install the hook
make install-hooks

# Make a commit (hook runs automatically)
git commit -m "Your message"

# Watch the magic happen! ✨
```

See [HOOK_SUMMARY.md](HOOK_SUMMARY.md) for detailed examples.

## Usage Example

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

## 📚 Documentation

- **[submission.md](submission.md)** - Full challenge submission
- **[HOOK_SUMMARY.md](HOOK_SUMMARY.md)** - Hook features and examples
- **[hooks/README.md](hooks/README.md)** - Complete hook documentation
- **[QUICKREF.md](QUICKREF.md)** - Quick command reference

## Contributing

This is a demonstration project for the GitHub Copilot CLI Challenge. If you'd like to:

1. Install development dependencies: `make install`
2. Install the pre-commit hook: `make install-hooks`
3. Make your changes
4. Let the hook guide you: `git commit -m "Your changes"`

The pre-commit hook will auto-fix most issues and provide Copilot-powered suggestions for the rest!

## Challenge Links

- 🏆 [GitHub Copilot CLI Challenge](https://dev.to/challenges/github-2026-01-21)
- 📝 [Full Submission](submission.md)
- 💡 [GitHub Copilot CLI Documentation](https://docs.github.com/en/copilot/github-copilot-in-the-cli)

## License

MIT - This is a demonstration project for educational purposes.