all:
	$(MAKE) docs
	$(MAKE) nodocs
pre-clean:
	rm -rf 'template/{{ pypi_name }}/{% if add_docs %}poetry.lock{% endif %}' 'template/{{ pypi_name }}/{% if not add_docs %}poetry.lock{% endif %}'
clean:
	rm -rf cool-example .copier-answers.yml
setup-env:
	echo '{"add_docs":true,"author":"Bryan Hu","email":"bryan.hu.2020@gmail.com","is_app":true,"module_name":"cool_example","project_description":"Example description.","project_name":"Cool Example","pypi_name":"cool-example","username":"ThatXliner"}' > .copier-answers.yml
run:
	cd cool-example && poetry install && poetry update --lock
docs: pre-clean
	$(MAKE) setup-env
	copier copy gh:ThatXliner/pyt2 . -a .copier-answers.yml --defaults -d add_docs=true --vcs-ref HEAD
	$(MAKE) run
	cp cool-example/poetry.lock 'template/{{ pypi_name }}/{% if add_docs %}poetry.lock{% endif %}'
	$(MAKE) clean
nodocs: pre-clean
	$(MAKE) setup-env
	copier copy gh:ThatXliner/pyt2 . -a .copier-answers.yml --defaults -d add_docs=false --vcs-ref HEAD
	$(MAKE) run
	cp cool-example/poetry.lock 'template/{{ pypi_name }}/{% if not add_docs %}poetry.lock{% endif %}'
	$(MAKE) clean
