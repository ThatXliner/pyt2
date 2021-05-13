# Pyt2

My [second attempt](https://github.com/ThatXliner/Pytemplate) at making a Python template.

## Why?

I've seen [many other projects like this](https://github.com/search?q=python+cookiecutter) but I've never seen any of them follow the pattern I want.

# Features

 - Uses the linters Black, Isort, MyPy, and Pylint
 - Uses Hypothesis for testing
 - Has a `test_version.py` which will test if the `__version__` metadata variable present in the package's name is equal to the one in the `pyproject.toml`
 - Documentation via Sphinx (Optional)
 - A pre-computed lock-file (`poetry.lock`) for the dependencies described above
 - Uses Poetry to manage the project
 - Optional `__main__.py` and `[tool.poetry.scripts]` entry point generation (for applications)

# Usage

```bash
cookiecutter gh:ThatXliner/pyt2
```
✨ Magic
