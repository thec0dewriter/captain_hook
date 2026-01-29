#!/usr/bin/env bash
#
# Demo script to test the pre-commit hook with various error scenarios
#

set -e

echo "=== Pre-commit Hook Demo ==="
echo ""
echo "This demo shows how the pre-commit hook handles different scenarios:"
echo ""

# Create a temporary file with linting issues
echo "1. Creating a file with linting issues..."
cat > /tmp/demo_lint.py << 'EOF'
import os
import sys
import json  # Unused import - will be caught by linter

def bad_function(x,y):  # Missing spaces in parameters
    result=x+y  # Missing spaces around operators
    return result
EOF

echo "   File created: /tmp/demo_lint.py"
echo "   Issues: unused import, missing spaces"
echo ""

# Create a temporary file with formatting issues
echo "2. Creating a file with formatting issues..."
cat > /tmp/demo_format.py << 'EOF'
def badly_formatted(  x,y   ):
    if True:
      result = {
        'key': 'value',
        'another_key':    'another_value'
      }
      return result
EOF

echo "   File created: /tmp/demo_format.py"
echo "   Issues: inconsistent indentation, extra spaces"
echo ""

# Create a temporary file with type checking issues
echo "3. Creating a file with type checking issues..."
cat > /tmp/demo_types.py << 'EOF'
def add_numbers(a, b):  # Missing type hints
    return a + b

def process_data(data: str) -> int:
    return data  # Type error: returning str instead of int
EOF

echo "   File created: /tmp/demo_types.py"
echo "   Issues: missing type hints, type mismatch"
echo ""

echo "=== How the Hook Works ==="
echo ""
echo "When you commit, the hook will:"
echo "  1. Run ruff check - auto-fixes imports and spacing"
echo "  2. Run ruff format - auto-formats code"
echo "  3. Run mypy - reports type errors"
echo "  4. Run pytest - ensures all tests pass"
echo ""
echo "If any check fails:"
echo "  - Linting/Formatting: Auto-fixed and staged"
echo "  - Type/Test errors: Calls GitHub Copilot CLI for suggestions"
echo ""

echo "=== Try It Yourself ==="
echo ""
echo "To test the hook:"
echo "  1. Copy one of the demo files to src/captain_hook/"
echo "  2. Stage it: git add src/captain_hook/"
echo "  3. Try to commit: git commit -m 'test'"
echo "  4. Watch the hook auto-fix issues!"
echo ""

echo "Example:"
echo "  cp /tmp/demo_lint.py src/captain_hook/demo.py"
echo "  git add src/captain_hook/demo.py"
echo "  git commit -m 'Add demo file'"
echo ""

echo "=== Hook Features ==="
echo ""
echo "✅ Auto-fixes:"
echo "   - Removes unused imports"
echo "   - Fixes spacing and formatting"
echo "   - Applies consistent code style"
echo ""
echo "⚠️  Requires manual fix (with Copilot help):"
echo "   - Type errors"
echo "   - Failing tests"
echo "   - Complex linting issues"
echo ""
echo "🔧 GitHub Copilot CLI Integration:"
echo "   - Analyzes error output"
echo "   - Suggests intelligent fixes"
echo "   - Provides context-aware solutions"
echo ""

echo "=== Installation ==="
echo ""
echo "The hook is already installed at: .git/hooks/pre-commit"
echo ""
echo "To reinstall: make install-hooks"
echo "To bypass once: git commit --no-verify"
echo ""

rm -f /tmp/demo_*.py
echo "Demo files cleaned up. Hook is ready to use!"
