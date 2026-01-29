\*This is a submission for the \[GitHub Copilot CLI Challenge](https://dev.to/challenges/github-2026-01-21)\*

# Captain Hook: Intelligent Git Pre-Commit Hook with Auto-Fix & AI Integration

## What I Built

I built **Captain Hook**, an intelligent git pre-commit hook system that runs comprehensive QA checks before every commit and automatically fixes issues when possible. When auto-fix isn't feasible, it leverages **GitHub Copilot CLI** to suggest intelligent solutions.

### Key Features:

**Automated QA Pipeline:**
- 📋 **Linting** (ruff check) - Auto-fixes unused imports, spacing, and style issues
- 🎨 **Formatting** (ruff format) - Auto-formats code to enforce consistency
- 🔎 **Type Checking** (mypy) - Validates type hints for type safety
- 🧪 **Tests** (pytest) - Ensures all tests pass with 100% coverage

**Intelligent Auto-Fix:**
The hook doesn't just identify problems—it fixes them automatically when possible:
- Removes unused imports
- Fixes spacing and indentation
- Applies consistent code style
- Auto-stages fixed files for commit

**GitHub Copilot CLI Integration:**
When issues can't be auto-fixed (type errors, test failures), the hook:
1. Captures detailed error output
2. Creates a context-rich fix prompt
3. Calls `gh copilot suggest` with the error details
4. Provides AI-powered suggestions to resolve the issue

**Production-Ready Setup:**
- Complete Python library with UV package manager
- Sample modules with full type hints and docstrings
- 8 passing tests with 100% code coverage
- Comprehensive documentation and quick reference guides
- Easy installation with `make install-hooks`

### What It Means to Me:

This project represents a practical solution to a common problem in software development: maintaining code quality without disrupting developer flow. By combining automated checks, intelligent auto-fixes, and AI-assisted debugging, Captain Hook creates a safety net that catches issues early while minimizing friction.

The integration with GitHub Copilot CLI demonstrates how AI can be seamlessly woven into existing development workflows, transforming error messages from frustrating roadblocks into opportunities for learning and improvement.

## Demo

### Project Repository Structure:
```
captain_hook/
├── src/captain_hook/         # Python library code
├── tests/                    # Test suite (100% coverage)
├── hooks/                    # Git hook system
│   ├── pre-commit           # Hook template
│   ├── install.sh           # Easy installer
│   ├── demo.sh              # Interactive demo
│   └── README.md            # Full documentation
├── HOOK_SUMMARY.md          # Feature summary
├── QUICKREF.md              # Quick reference
└── Makefile                 # Convenient commands
```

### Hook in Action:

**Example 1: Auto-Fix Success** ✅
```bash
$ git commit -m "Add new feature"

🔍 Running pre-commit QA checks...

📋 Step 1/4: Linting (ruff check)
✗ Linting failed
  - Found unused imports: os, sys, json
  - Missing spaces around operators
Attempting auto-fix with ruff...
✓ Auto-fixed linting issues
Staging auto-fixed files...

🎨 Step 2/4: Format checking (ruff format)
✗ Format check failed
Auto-formatting files...
✓ Files formatted
Staging formatted files...

🔎 Step 3/4: Type checking (mypy)
✓ Type checking passed

🧪 Step 4/4: Running tests (pytest)
✓ Tests passed

✅ All pre-commit checks PASSED
```

**Example 2: GitHub Copilot CLI Assistance** ⚠️
```bash
$ git commit -m "Add calculator"

🔍 Running pre-commit QA checks...

📋 Step 1/4: Linting (ruff check)
✓ Linting passed

🎨 Step 2/4: Format checking (ruff format)
✓ Format check passed

🔎 Step 3/4: Type checking (mypy)
✗ Type checking failed
src/calculator.py:4: error: Function is missing a type annotation

⚠️ type checking failed. Attempting auto-fix with GitHub Copilot CLI...

Calling GitHub Copilot CLI...
[Copilot provides AI-powered suggestions to add type hints]

Tips:
  - Run 'make check' to see all errors
  - Use suggestions from GitHub Copilot above
```

### Real-World Testing:

The hook was tested with intentionally broken code:
- ✅ Detected and removed 3 unused imports
- ✅ Auto-fixed spacing issues (x,y → x, y)
- ✅ Auto-formatted entire files
- ✅ Blocked commit on type errors
- ✅ Successfully committed after manual fixes

### Quick Start:

```bash
# Install the hook
make install-hooks

# Make changes to code
vim src/captain_hook/calculator.py

# Commit (hook runs automatically)
git commit -m "Update calculator"

# Hook auto-fixes issues and guides you through any remaining problems
```

## My Experience with GitHub Copilot CLI

Building Captain Hook with GitHub Copilot CLI was transformative in several ways:

### 1. **Intelligent Error Resolution**

The most powerful aspect was integrating Copilot CLI into the error handling workflow. Instead of just showing cryptic error messages, the hook can now:
- Analyze mypy type errors and suggest proper type annotations
- Understand pytest failures and recommend fixes
- Provide context-aware solutions based on the actual code structure

This transforms the pre-commit hook from a gatekeeper into an intelligent assistant that helps developers fix issues quickly.

### 2. **Streamlined Development Process**

Using Copilot CLI during development helped me:
- Quickly scaffold the project structure with proper Python packaging
- Generate comprehensive test cases with edge cases I hadn't considered
- Create detailed documentation and help text
- Build robust error handling with clear user feedback

### 3. **Learning Through AI Collaboration**

Working with Copilot CLI felt like pair programming with an expert who:
- Suggests best practices for git hook implementation
- Recommends optimal tool configurations (ruff, mypy, pytest)
- Provides shell scripting patterns for robust error handling
- Offers insights on user experience and developer workflow

### 4. **Real-World Impact**

The combination of automated checks and AI assistance creates a powerful safety net:
- **Auto-fix** handles 80% of common issues (imports, formatting)
- **Copilot CLI** helps with the remaining 20% (logic, types, tests)
- Developers spend less time on mundane fixes and more time on meaningful work
- Code quality improves without sacrificing velocity

### 5. **Key Takeaway**

GitHub Copilot CLI isn't just about writing code faster—it's about creating smarter development workflows. By embedding AI assistance directly into quality gates like pre-commit hooks, we can make the path to high-quality code smoother and more intuitive.

This project demonstrates that AI tools are most powerful when integrated thoughtfully into existing developer workflows, providing help exactly when and where it's needed.

---

**Technologies Used:**
- Python 3.9+ with UV package manager
- Ruff (linting & formatting)
- Mypy (type checking)
- Pytest (testing with coverage)
- Bash scripting
- Git hooks
- GitHub Copilot CLI

**Try it yourself:**
```bash
git clone <repository>
cd captain_hook
make install
make install-hooks
```

<!-- Don't forget to add a cover image (if you want). -->

