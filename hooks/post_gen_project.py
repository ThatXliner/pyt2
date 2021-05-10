import os

if "{{ cookiecutter.add_docs }}" == "no":
    os.rmdir("docs")
