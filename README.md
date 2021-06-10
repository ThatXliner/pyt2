# Pyt2

My [second attempt](https://github.com/ThatXliner/Pytemplate) at making a Python template.

## Why?

I've seen [many other projects like this](https://github.com/search?q=python+cookiecutter) but I've never seen any of them follow the pattern I want.

# :sparkles: Features

 - :open_file_folder: Structure and project style
     - :art: Uses the linters
       - :black_circle: Black
       - :pencil2: Isort
       - :snake: MyPy
       - :memo: Pylint
     - &#x1F9EA; Hypothesis for testing
     - :musical_note: Uses Poetry to manage the project
     - :notes: Has Poe tasks
     - :octocat: Uses GitHub Actions for CI
     - (Optional) :smile_cat: Documentation via Sphinx
 - :printer: Generation features
     - :lock: Pre-computed lockfile (`poetry.lock`)
     - :bookmark: Has a `test_version.py` which will test if the `__version__` metadata variable present in the package's name is equal to the one in the `pyproject.toml`
     - (Optional) :clapper: `__main__.py` and `[tool.poetry.scripts]` entry point generation (for applications)

# Usage

```bash
cookiecutter gh:ThatXliner/pyt2
```
:sparkles: Magic

# FAQ

## About the name...

Pronunciation: *pit-too*
Why this is the name: **Py**thon **T**emplate **2**
