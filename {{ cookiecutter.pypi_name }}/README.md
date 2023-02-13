# {{ cookiecutter.project_name }}

[![Code style: black](https://img.shields.io/badge/code%20style-black-000000.svg)](https://github.com/psf/black)
[![Ruff](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/charliermarsh/ruff/main/assets/badge/v1.json)](https://github.com/charliermarsh/ruff)
[![Imports: isort](https://img.shields.io/badge/%20imports-isort-%231674b1?style=flat&labelColor=ef8336)](https://pycqa.github.io/isort/)
[![Checked with mypy](http://www.mypy-lang.org/static/mypy_badge.svg)](http://mypy-lang.org/)
[![codecov](https://codecov.io/gh/{{ cookiecutter.username }}/{{ cookiecutter.pypi_name }}/branch/main/graph/badge.svg)](https://codecov.io/gh/{{ cookiecutter.username }}/{{ cookiecutter.pypi_name }})
{% if cookiecutter.add_docs == "yes" %}[![Documentation Status](https://readthedocs.org/projects/{{ cookiecutter.module*name.replace("*", "") }}/badge/?version=latest)](https://{{ cookiecutter.module_name.replace("_", "") }}.readthedocs.io/en/latest/?badge=latest){% endif %}
[![CI](https://github.com/{{ cookiecutter.username }}/{{ cookiecutter.pypi_name }}/actions/workflows/ci.yml/badge.svg?branch=main)](https://github.com/{{ cookiecutter.username }}/{{ cookiecutter.pypi_name }}/actions/workflows/ci.yml) [![PyPI - Python Version](https://img.shields.io/pypi/pyversions/{{ cookiecutter.pypi_name }})](https://pypi.org/project/{{ cookiecutter.pypi_name }})
[![PyPI](https://img.shields.io/pypi/v/{{ cookiecutter.pypi_name }})](https://pypi.org/project/{{ cookiecutter.pypi_name }})
[![PyPI - License](https://img.shields.io/pypi/l/{{ cookiecutter.pypi_name }})](#license)

> {{ cookiecutter.project_description }}

## Installation

You can get this project via `pip`

```bash
$ pip install {{ cookiecutter.pypi_name }}
```

{% if cookiecutter.is_app == "yes" %}
But we **highly recommend** you install this project using [pipx](https://pypa.github.io/pipx/)

```bash
$ pipx install {{ cookiecutter.pypi_name }}
```

{% else %}
Or, if you're using [Poetry](https://python-poetry.org)

```bash
$ poetry add {{ cookiecutter.pypi_name }}
```

{% endif %}

## License

Copyright © 2021, {{ cookiecutter.author }}

This project is licensed under the [GNU GPL v3+](https://github.com/{{ cookiecutter.username }}/{{ cookiecutter.pypi_name }}/blob/main/LICENSE.txt).

In short, this means you can do anything with it (distribute, modify, sell) but if you were to publish your changes, you must make the source code and build instructions readily available.

If you are a company using this project and want an exception, email me at [{{ cookiecutter.email }}](mailto:{{ cookiecutter.email }}) and we can discuss.
