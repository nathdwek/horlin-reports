.PHONY: pics

default: pics
	latexmk
pics:
	make --directory=pics pics
