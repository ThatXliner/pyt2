> **Note**: If you're looking for the old CookieCutter template, see [this branch](https://github.com/ThatXliner/pyt2/tree/cookiecutter)

# Pyt2

My [second attempt](https://github.com/ThatXliner/Pytemplate) at making a Python template.

## Why?

I've seen [many other projects like this](https://github.com/search?q=python+cookiecutter) but I've never seen any of them follow the pattern I want.

## :sparkles: Features

- :open_file_folder: Package management
  - :musical_note: Uses [Poetry](https://python-poetry.org) to manage the project
  - :notes: Has [Poe](https://github.com/nat-n/poethepoet) tasks
- :art: Linters (checked via GitHub Actions :octocat:)
  - :black_circle: [Black](https://github.com/psf/black)
  - :snake: [MyPy](https://github.com/python/mypy)
  - :zap: [Ruff](https://beta.ruff.rs/docs/) (which includes [`isort`](https://pycqa.github.io/isort/) and [Pylint](https://pylint.readthedocs.io/en/latest/) and [many, many others...](https://beta.ruff.rs/docs/rules/))
  - :warning: Uses [`.pre-commit-config.yaml`](https://pre-commit.com/)
  - :mouse: Uses [`.editorconfig`](https://editorconfig.org/)
- &#x1F9EA; [Hypothesis](https://hypothesis.works), [codecov](https://about.codecov.io/), and [Pytest](https://pytest.org) for testing
- :octocat: Uses [GitHub Actions](https://github.com/features/actions) for CI
  - :white_check_mark: [Cached workflows](https://github.com/ThatXliner/pyt2/blob/9f7b3d982a023ec2bc475a26752f909a9a95a2ba/%7B%7B%20cookiecutter.pypi_name%20%7D%7D/.github/workflows/ci.yml#L24-L43)
  - :snake: Tests for **Python 3.8+** on **:penguin: Linux, :apple: Mac, and :checkered_flag: Windows**.
  - :bookmark: [Automatically generate and upload distribution files on tagged releases](https://github.com/ThatXliner/pyt2/blob/master/%7B%7B%20cookiecutter.pypi_name%20%7D%7D/.github/workflows/release.yml)
  - (Optional) :smile_cat: Documentation via [Sphinx](https://www.sphinx-doc.org/en/master/)
- :printer: Template usage features
  - :recycle: Pyt2 uses [Copier](https://copier.readthedocs.io/en/stable/), therefore Pyt2 has [template syncing features](https://copier.readthedocs.io/en/stable/updating/)
  - :lock: Pre-computed lockfile (`poetry.lock`) with up-to-date dependencies via CI ([![Autoupdate](https://github.com/ThatXliner/pyt2/actions/workflows/autoupdate.yml/badge.svg)](https://github.com/ThatXliner/pyt2/actions/workflows/autoupdate.yml))
  - :bookmark: Has a `test_version.py` which will test if the `__version__` metadata variable in the package is equal to the one in the `pyproject.toml`
  - (Optional) :clapper: `__main__.py` and `[tool.poetry.scripts]` entry point generation (for applications)

# Usage

First, install [Copier](https://copier.readthedocs.io/en/stable/) (preferably using [pipx](https://pypa.github.io/pipx/)):

```bash
pipx install copier
```

Now you can run this command to create a new folder in the current directory that contains the scaffolded project:

```bash
copier copy gh:ThatXliner/pyt2 .
```

Or for the bleeding-edge version on the `master` branch:

```bash
copier copy gh:ThatXliner/pyt2 . --vcs-ref master
```

## Updating a project

If you have already made a project using this and this template gets a new release, you may update your project by running

```bash
copier update
```

in your project.

# FAQ

## About the name...

Pronunciation: _pit-too_
Why this is the name: **Py**thon **T**emplate **2**

## Why is the default templated license GPL?

[Because it's usually better](https://thatxliner.github.io/blog/2020/11/12/why-i-use-gnu-gpl.html).

But you can fork this and modify the default license in the template anyways. _This template_, however, is released to the **Public Domain**.
