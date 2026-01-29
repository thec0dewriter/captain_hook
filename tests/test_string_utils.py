"""Tests for the string utilities module."""

from captain_hook.string_utils import count_words, is_palindrome, reverse_string


def test_reverse_string() -> None:
    """Test string reversal."""
    assert reverse_string("hello") == "olleh"
    assert reverse_string("") == ""
    assert reverse_string("a") == "a"
    assert reverse_string("Python") == "nohtyP"


def test_is_palindrome() -> None:
    """Test palindrome detection."""
    assert is_palindrome("racecar") is True
    assert is_palindrome("A man a plan a canal Panama") is True
    assert is_palindrome("hello") is False
    assert is_palindrome("") is True
    assert is_palindrome("a") is True
    assert is_palindrome("Madam") is True


def test_count_words() -> None:
    """Test word counting."""
    assert count_words("hello world") == 2
    assert count_words("") == 0
    assert count_words("one") == 1
    assert count_words("The quick brown fox") == 4
    assert count_words("  multiple   spaces  ") == 2
