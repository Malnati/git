TOOLS: prettier

.PHONY: install, uninstall

install:
	echo "Removing ../.git/hooks/pre-commit"
	rm -f ../.git/hooks/pre-commit
	echo "Creating symbolic link to ../../../.prettier-hook/bin/pre-commit-prettier.sh"
	cd ../.git/hooks && ln -s ../../.prettier-hook/bin/pre-commit-prettier.sh pre-commit

uninstall:
	echo "Not yet."
