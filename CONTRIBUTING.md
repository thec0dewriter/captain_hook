# Contributing to Captain Hook

Thank you for your interest in Captain Hook! This project is a demonstration for the [GitHub Copilot CLI Challenge](https://dev.to/challenges/github-2026-01-21).

## 🎯 About This Project

Captain Hook demonstrates how GitHub Copilot CLI can be integrated into automated development workflows. While this is primarily a challenge submission, we welcome feedback, improvements, and learning from the community!

## 🚀 Getting Started

### Prerequisites

- Python 3.9 or higher
- Git
- (Optional) [GitHub CLI with Copilot extension](https://docs.github.com/en/copilot/github-copilot-in-the-cli)

### Installation

```bash
# Clone the repository
git clone https://github.com/thec0dewriter/captain-hook.git
cd captain-hook

# Install dependencies
make install

# Install the pre-commit hook
make install-hooks
```

## 🧪 Testing the Hook

The main feature is the intelligent pre-commit hook. To see it in action:

```bash
# Make a change to any Python file
echo "import os" >> src/captain_hook/calculator.py

# Try to commit
git add .
git commit -m "Test hook"

# Watch the hook auto-fix the unused import!
```

## 🤝 How to Contribute

### Try It Out

The best contribution is trying the hook and sharing feedback:

1. Install the project and hook
2. Make some commits
3. Observe how it handles different error scenarios
4. Share your experience!

### Report Issues

Found a bug or have a suggestion?

1. Check if it's already reported in [Issues](../../issues)
2. Create a new issue with:
   - Clear description
   - Steps to reproduce
   - Expected vs actual behavior
   - Your environment (OS, Python version)

### Suggest Improvements

Have ideas for better GitHub Copilot CLI integration?

1. Open an issue describing your idea
2. Explain how it would improve the workflow
3. Provide examples if possible

### Code Contributions

Want to enhance the hook or fix a bug?

1. Fork the repository
2. Create a feature branch: `git checkout -b feature/amazing-feature`
3. Make your changes
4. Let the pre-commit hook guide you! It will:
   - Auto-fix linting and formatting
   - Check types
   - Run tests
5. Commit your changes: `git commit -m 'Add amazing feature'`
6. Push to your fork: `git push origin feature/amazing-feature`
7. Open a Pull Request

## 📝 Code Standards

The pre-commit hook enforces these automatically:

- **Linting**: Ruff with E, W, F, I, N, UP, B, C4, SIM rules
- **Formatting**: Ruff format (line length 100)
- **Type Hints**: All functions must have type annotations (mypy strict)
- **Tests**: All tests must pass with 100% coverage

## 🎓 Learning Opportunities

This project is educational! Great areas to explore:

- **Git Hooks**: Customize the hook behavior
- **GitHub Copilot CLI**: Try different prompting strategies
- **Python Packaging**: Experiment with UV and modern tooling
- **QA Automation**: Add more checks or tools

## 📚 Resources

- [Git Hooks Documentation](https://git-scm.com/book/en/v2/Customizing-Git-Git-Hooks)
- [GitHub Copilot CLI Docs](https://docs.github.com/en/copilot/github-copilot-in-the-cli)
- [Ruff Documentation](https://docs.astral.sh/ruff/)
- [UV Package Manager](https://github.com/astral-sh/uv)

## 💬 Questions?

- Read the [full documentation](README.md)
- Check the [hook summary](HOOK_SUMMARY.md)
- Review the [challenge submission](submission.md)
- Open a [discussion](../../discussions)

## 🙏 Acknowledgments

This project was created for the GitHub Copilot CLI Challenge to demonstrate practical AI-assisted development workflows.

Special thanks to:
- GitHub Copilot team for amazing tools
- Astral team for UV and Ruff
- Python community for excellent tooling

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

**Remember**: The pre-commit hook is your friend! It will help you maintain code quality automatically. 🎣✨
