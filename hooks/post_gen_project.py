import os
import subprocess, shutil

if "{{ cookiecutter.add_docs }}" == "no":
    os.rmdir("docs")

if "yes" in {
    '{{ cookiecutter["(post-generation hook) install venv?"] }}',
    '{{ cookiecutter["(post-generation hook) run git init?"] }}',
}:
    print("Running post project hooks:")

    if '{{ cookiecutter["(post-generation hook) install venv?"] }}' == "yes":
        print(" - Running `poetry install`...", end=" ")
        subprocess.run([shutil.which("poetry") or "poetry", "install"], stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
        print("done")

    if '{{ cookiecutter["(post-generation hook) run git init?"] }}' == "yes":
        print(" - Running `git init`...", end=" ")
        subprocess.run([shutil.which("git") or "git", "init"], stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
        print("done")
