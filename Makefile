all:
	$(MAKE) docs
	$(MAKE) nodocs
clean:
	rm -rf cool-example env.yml
setup-env:
	echo '{"add_docs":true,"author":"Bryan Hu","email":"bryan.hu.2020@gmail.com","is_app":true,"module_name":"cool_example","project_description":"","project_name":"Cool Example","pypi_name":"cool-example","username":"ThatXliner"}' > env.yml
run:
	cd cool-example && poetry up && poetry install && poetry update && poetry lock
docs: clean
	$(MAKE) setup-env
	copier copy gh:ThatXliner/pyt2 . -a env.yml --defaults -d add_docs:true
	$(MAKE) run
	cp cool-example/poetry.lock '{{ pypi_name }}/{% if add_docs %}poetry.lock{% endif %}'
	$(MAKE) clean
nodocs: clean
	$(MAKE) setup-env
	copier copy gh:ThatXliner/pyt2 . -a env.yml --defaults -d add_docs:false
	$(MAKE) run
	cp cool-example/poetry.lock '{{ pypi_name }}/{% if not add_docs %}poetry.lock{% endif %}'
	$(MAKE) clean
