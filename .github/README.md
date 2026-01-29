# 🎣 Captain Hook

[![GitHub Copilot CLI Challenge](https://img.shields.io/badge/GitHub%20Copilot%20CLI-Challenge%202026-blue?logo=github)](https://dev.to/challenges/github-2026-01-21)
[![Python 3.9+](https://img.shields.io/badge/python-3.9+-blue.svg)](https://www.python.org/downloads/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

**Intelligent Git Pre-Commit Hook with GitHub Copilot CLI Integration**

This repository demonstrates the power of **GitHub Copilot CLI** by creating an intelligent development workflow where AI assistance is seamlessly integrated into automated quality checks.

## 🏆 Challenge Submission

This project is a submission for the [GitHub Copilot CLI Challenge](https://dev.to/challenges/github-2026-01-21).

**Key Innovation:** When automated QA checks fail and can't be auto-fixed, the pre-commit hook intelligently calls GitHub Copilot CLI to provide context-aware suggestions for resolution.

## ⚡ Quick Demo

```bash
# Clone and install
git clone <your-repo-url>
cd captain_hook
make install
make install-hooks

# Try a commit - watch the magic! ✨
git commit -m "test"
```

## 📖 Learn More

- **[Full Submission](submission.md)** - Complete challenge submission
- **[Hook Documentation](hooks/README.md)** - Technical details
- **[Quick Reference](QUICKREF.md)** - Command cheat sheet

## 🤖 What Makes This Special?

Traditional pre-commit hooks just block commits when checks fail. **Captain Hook** goes further:

1. ✅ **Auto-fixes** what it can (linting, formatting)
2. 🤖 **Calls GitHub Copilot CLI** for complex issues
3. 💡 **Provides AI-powered suggestions** based on actual error context
4. 🚀 **Keeps developers in flow** instead of context-switching

## 🛠️ Technologies

- Python 3.9+ with UV package manager
- Ruff (linting & formatting)
- Mypy (type checking)
- Pytest (testing)
- **GitHub Copilot CLI** (AI assistance)
- Bash scripting
- Git hooks

---

Made with ❤️ for the GitHub Copilot CLI Challenge
