DEBUG ?= -v

role:
	mkdir -p tests/roles
	rm -f tests/roles/gcoop-libre.git-bare-repos
	cd tests/roles && ln -s ../../. gcoop-libre.git-bare-repos
	cd ..
	ansible-playbook $(DEBUG) -i tests/inventory tests/test.yml

lint:
	mkdir -p tests/roles
	rm -f tests/roles/gcoop-libre.git-bare-repos
	cd tests/roles && ln -s ../../. gcoop-libre.git-bare-repos
	cd ..
	ansible-lint $(DEBUG) tests/test.yml
