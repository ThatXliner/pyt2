# Pyt2

My [second attempt](https://github.com/ThatXliner/Pytemplate) at making a Python template.

## Why?

I've seen [many other projects like this](https://github.com/search?q=python+cookiecutter) but I've never seen any of them follow the pattern I want.

## :sparkles: Features

 - :open_file_folder: Structure and project style
     - :art: Uses the linters (via [DeepSource](https://deepsource.io))
       - :black_circle: [Black](https://github.com/psf/black)
       - :pencil2: [Isort](https://github.com/PyCQA/isort)
       - :snake: [MyPy](https://github.com/python/mypy)
       - :memo: [Pylint](https://www.pylint.org)
     - &#x1F9EA; [Hypothesis](https://hypothesis.works) and [Pytest](https://pytest.org) for testing
     - :musical_note: Uses [Poetry](https://python-poetry.org) to manage the project
     - :notes: Has [Poe](https://github.com/nat-n/poethepoet) tasks
     - :octocat: Uses [GitHub Actions](https://github.com/features/actions) for CI
     - (Optional) :smile_cat: Documentation via [Sphinx](https://www.sphinx-doc.org/en/master/)
 - :printer: Generation features
     - :lock: Pre-computed lockfile (`poetry.lock`) with up-to-date dependencies via CI ([![Autoupdate](https://github.com/ThatXliner/pyt2/actions/workflows/autoupdate.yml/badge.svg)](https://github.com/ThatXliner/pyt2/actions/workflows/autoupdate.yml))
     - :bookmark: Has a `test_version.py` which will test if the `__version__` metadata variable in the package is equal to the one in the `pyproject.toml`
     - :robot: Optional post-generation hooks. Runs `git init` and/or `poetry install`
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

## Why GPL?

https://thatxliner.github.io/blog/2020/11/12/why-i-use-gnu-gpl.html

But you can fork this and modify the default license in the template anyways.
