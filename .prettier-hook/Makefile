TOOLS: prettier

.PHONY: install, uninstall

install:
	rm -f ../.git/hooks/pre-commit
	mv ../.git/hooks/pre-commit ../.git/hooks/pre-commit.bkp
	ln -s ../.git/hooks/pre-commit ./bin/pre-commit-prettier.sh

uninstall:
	rm -f	../.git/hooks/pre-commit
	mv ../.git/hooks/pre-commit.bkp ../.git/hooks/pre-commit
