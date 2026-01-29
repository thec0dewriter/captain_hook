"""Example demonstrating pre-commit hook auto-fix."""


def example_with_issues(a: float, b: float) -> float:
    """Add two numbers.

    Args:
        a: First number
        b: Second number

    Returns:
        Sum of a and b
    """
    result = a + b
    return result
