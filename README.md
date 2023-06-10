# Pyt2

My [second attempt](https://github.com/ThatXliner/Pytemplate) at making a Python template.

## Why?

I've seen [many other projects like this](https://github.com/search?q=python+cookiecutter) but I've never seen any of them follow the pattern I want.

## :sparkles: Features

- :open_file_folder: Structure and project style
  - :art: Uses the linters (checked via GitHub Actions :octocat:)
    - :black_circle: [Black](https://github.com/psf/black)
    - :snake: [MyPy](https://github.com/python/mypy)
    - :zap: [Ruff](https://beta.ruff.rs/docs/) (which includes [`isort`](https://pycqa.github.io/isort/) and [Pylint](https://pylint.readthedocs.io/en/latest/) and [many, many others...](https://beta.ruff.rs/docs/rules/))
  - &#x1F9EA; [Hypothesis](https://hypothesis.works) and [Pytest](https://pytest.org) for testing
  - :musical_note: Uses [Poetry](https://python-poetry.org) to manage the project
  - :notes: Has [Poe](https://github.com/nat-n/poethepoet) tasks
  - :octocat: Uses [GitHub Actions](https://github.com/features/actions) for CI
    - :white_check_mark: [Cached workflows](https://github.com/ThatXliner/pyt2/blob/9f7b3d982a023ec2bc475a26752f909a9a95a2ba/%7B%7B%20cookiecutter.pypi_name%20%7D%7D/.github/workflows/ci.yml#L24-L43)
    - :snake: Tests for **Python 3.8+** on **:penguin: Linux, :apple: Mac, and :checkered_flag: Windows**.
    - :bookmark: [Automatically generate and upload distribution files on tagged releases](https://github.com/ThatXliner/pyt2/blob/master/%7B%7B%20cookiecutter.pypi_name%20%7D%7D/.github/workflows/release.yml)
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

Pronunciation: _pit-too_
Why this is the name: **Py**thon **T**emplate **2**

## Why is the default templated license GPL?

[Because it's usually better](https://thatxliner.github.io/blog/2020/11/12/why-i-use-gnu-gpl.html).

But you can fork this and modify the default license in the template anyways. _This template_, however, is released to the **Public Domain**.
