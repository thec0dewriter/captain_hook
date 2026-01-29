"""Tests for the calculator module."""

import pytest

from captain_hook.calculator import add, divide, multiply, subtract


def test_add() -> None:
    """Test addition function."""
    assert add(2, 3) == 5
    assert add(-1, 1) == 0
    assert add(0, 0) == 0
    assert add(2.5, 3.5) == 6.0


def test_subtract() -> None:
    """Test subtraction function."""
    assert subtract(5, 3) == 2
    assert subtract(0, 5) == -5
    assert subtract(-1, -1) == 0
    assert subtract(10.5, 2.5) == 8.0


def test_multiply() -> None:
    """Test multiplication function."""
    assert multiply(3, 4) == 12
    assert multiply(0, 5) == 0
    assert multiply(-2, 3) == -6
    assert multiply(2.5, 2) == 5.0


def test_divide() -> None:
    """Test division function."""
    assert divide(10, 2) == 5
    assert divide(9, 3) == 3
    assert divide(-10, 2) == -5
    assert divide(7.5, 2.5) == 3.0


def test_divide_by_zero() -> None:
    """Test division by zero raises error."""
    with pytest.raises(ValueError, match="Cannot divide by zero"):
        divide(10, 0)
