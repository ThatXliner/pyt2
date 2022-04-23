all:
	$(MAKE) docs
	$(MAKE) nodocs
clean:
	rm -rf cool-example env.yml
run:
	cookiecutter . --no-input --config-file env.yml
	cd cool-example && poetryup
docs: clean
	echo "default_context:\n  '(post-generation hook) install venv?': no\n  '(post-generation hook) run git init?': no\n" > env.yml
	$(MAKE) run
	cp cool-example/poetry.lock '{{ cookiecutter.pypi_name }}/{% if cookiecutter.add_docs == "yes" %}poetry.lock{% endif %}'
	$(MAKE) clean
nodocs: clean
	echo "default_context:\n  add_docs: no\n  '(post-generation hook) install venv?': no\n  '(post-generation hook) run git init?': no\n" > env.yml
	$(MAKE) run
	cp cool-example/poetry.lock '{{ cookiecutter.pypi_name }}/{% if cookiecutter.add_docs == "no" %}poetry.lock{% endif %}'
	$(MAKE) clean
