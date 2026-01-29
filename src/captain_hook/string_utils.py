"""Sample string utilities module."""


def reverse_string(text: str) -> str:
    """Reverse a string.

    Args:
        text: String to reverse

    Returns:
        Reversed string
    """
    return text[::-1]


def is_palindrome(text: str) -> bool:
    """Check if a string is a palindrome (case-insensitive).

    Args:
        text: String to check

    Returns:
        True if the string is a palindrome, False otherwise
    """
    clean_text = text.lower().replace(" ", "")
    return clean_text == clean_text[::-1]


def count_words(text: str) -> int:
    """Count the number of words in a string.

    Args:
        text: String to count words in

    Returns:
        Number of words
    """
    return len(text.split())
