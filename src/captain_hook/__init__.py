"""Captain Hook - A sample Python library with QA tooling."""

from captain_hook.calculator import add, divide, multiply, subtract
from captain_hook.string_utils import count_words, is_palindrome, reverse_string

__version__ = "0.1.0"
__all__ = [
    "add",
    "subtract",
    "multiply",
    "divide",
    "reverse_string",
    "is_palindrome",
    "count_words",
]
