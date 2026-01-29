# Git Hooks

This directory contains git hooks for the captain-hook project.

## Available Hooks

### pre-commit

The pre-commit hook runs comprehensive QA checks before allowing a commit:

1. **Linting** (ruff check) - Auto-fixes issues when possible
2. **Formatting** (ruff format) - Auto-formats code if needed
3. **Type Checking** (mypy) - Validates type hints
4. **Tests** (pytest) - Ensures all tests pass

### Auto-Fix Features

- **Linting issues**: Automatically fixed with `ruff check --fix`
- **Formatting issues**: Automatically formatted with `ruff format`
- **Failed checks**: Attempts to use GitHub Copilot CLI for intelligent fixes

## Installation

### Quick Install

Run from the project root:

```bash
bash hooks/install.sh
```

### Manual Install

```bash
cp hooks/pre-commit .git/hooks/pre-commit
chmod +x .git/hooks/pre-commit
```

## Usage

Once installed, the hook runs automatically on every `git commit`:

```bash
git add .
git commit -m "Your commit message"
# Hook runs automatically here
```

### Sample Output

```
🔍 Running pre-commit QA checks...

📋 Step 1/4: Linting (ruff check)
✓ Linting passed

🎨 Step 2/4: Format checking (ruff format)
✓ Format check passed

🔎 Step 3/4: Type checking (mypy)
✓ Type checking passed

🧪 Step 4/4: Running tests (pytest)
✓ Tests passed

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
✅ All pre-commit checks PASSED
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
```

## GitHub Copilot CLI Integration

The hook integrates with GitHub Copilot CLI for intelligent auto-fixes:

### Setup GitHub Copilot CLI

```bash
# Install the GitHub CLI extension
gh extension install github/gh-copilot

# Verify installation
gh copilot --version
```

### How It Works

When a check fails and auto-fix doesn't resolve it:

1. The hook captures the error output
2. Calls GitHub Copilot CLI with the error details
3. Copilot suggests fixes based on the error
4. You can apply the suggestions and retry the commit

## Bypassing the Hook

**Not recommended**, but sometimes necessary during development:

```bash
# Bypass pre-commit hook for a single commit
git commit --no-verify -m "WIP: bypassing checks"

# Or use the shorter form
git commit -n -m "WIP: bypassing checks"
```

## Uninstalling

To remove the hook:

```bash
rm .git/hooks/pre-commit
```

To restore a backup:

```bash
# List backups
ls -la .git/hooks/pre-commit.backup.*

# Restore a specific backup
mv .git/hooks/pre-commit.backup.TIMESTAMP .git/hooks/pre-commit
```

## Customization

To customize the hook behavior, edit `hooks/pre-commit` and reinstall:

```bash
# Edit the hook
vim hooks/pre-commit

# Reinstall
bash hooks/install.sh
```

## Troubleshooting

### Hook not running

```bash
# Verify hook is installed
ls -la .git/hooks/pre-commit

# Verify it's executable
chmod +x .git/hooks/pre-commit
```

### UV not found

```bash
# Ensure UV is in your PATH
export PATH="$HOME/.local/bin:$HOME/.cargo/bin:$PATH"

# Or install UV
curl -LsSf https://astral.sh/uv/install.sh | sh
```

### Tests taking too long

You can modify the hook to skip tests for faster commits:

```bash
# Comment out the tests section in .git/hooks/pre-commit
# But remember to run 'make test' before pushing!
```
