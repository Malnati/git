TOOLS: prettier

.PHONY: install, uninstall

install:
	echo "Removing ../.git/hooks/pre-commit"
	rm -f ../.git/hooks/pre-commit
	echo "Creating symbolic link to ../../../.prettier-hook/bin/pre-commit-prettier.sh"
	ln -s ../../../.prettier-hook/bin/pre-commit-prettier.sh ../.git/hooks/pre-commit

uninstall:
	echo "Not yet."
