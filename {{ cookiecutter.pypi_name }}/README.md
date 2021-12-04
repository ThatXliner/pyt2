# {{ cookiecutter.project_name }}

[![Code style: black](https://img.shields.io/badge/code%20style-black-000000.svg)](https://github.com/psf/black) [![codecov](https://codecov.io/gh/{{ cookiecutter.username }}/{{ cookiecutter.pypi_name }}/branch/main/graph/badge.svg)](https://codecov.io/gh/{{ cookiecutter.username }}/{{ cookiecutter.pypi_name }}) {% if cookiecutter.add_docs == "yes" %}[![Documentation Status](https://readthedocs.org/projects/{{ cookiecutter.module_name.replace("_", "") }}/badge/?version=latest)](https://{{ cookiecutter.module_name.replace("_", "") }}.readthedocs.io/en/latest/?badge=latest){% endif %} [![CI](https://github.com/{{ cookiecutter.username }}/{{ cookiecutter.pypi_name }}/actions/workflows/ci.yml/badge.svg?branch=main)](https://github.com/{{ cookiecutter.username }}/{{ cookiecutter.pypi_name }}/actions/workflows/ci.yml)

> {{ cookiecutter.project_description }}
