.PHONY: help install install-hooks test lint format format-check typecheck check clean

help: ## Show this help message
	@echo 'Usage: make [target]'
	@echo ''
	@echo 'Available targets:'
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "  %-15s %s\n", $$1, $$2}'

install: ## Install dependencies
	uv sync

install-hooks: ## Install git pre-commit hooks
	bash hooks/install.sh

test: ## Run tests with coverage
	uv run pytest

lint: ## Run linting checks
	uv run ruff check .

format: ## Format code
	uv run ruff format .

format-check: ## Check code formatting without making changes
	uv run ruff format --check .

typecheck: ## Run type checking
	uv run mypy src

check: lint format-check typecheck test ## Run all checks (lint, format-check, typecheck, test)

clean: ## Clean up generated files
	rm -rf .pytest_cache
	rm -rf .mypy_cache
	rm -rf .ruff_cache
	rm -rf htmlcov
	rm -rf .coverage
	find . -type d -name __pycache__ -exec rm -rf {} +
	find . -type f -name "*.pyc" -delete
