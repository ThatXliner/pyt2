import os
import subprocess, shutil
{% if not cookiecutter.add_docs %}
os.rmdir("docs")
{% endif %}

if "yes" in {
    '{{ cookiecutter["(post-generation hook) install venv?"] }}',
    '{{ cookiecutter["(post-generation hook) run git init?"] }}',
}:
    print("Running post project hooks:")
{% if cookiecutter["(post-generation hook) run git init?"] %}
    print(" - Running `git init`...", end=" ", flush=True)
    subprocess.run([shutil.which("git") or "git", "init"], stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
    print("done")
{% endif %}
{% if cookiecutter["(post-generation hook) install venv?"] %}
    print(" - Running `poetry install`...", end=" ", flush=True)
    subprocess.run([shutil.which("poetry") or "poetry", "install"], stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
    print("done")
{% endif %}
