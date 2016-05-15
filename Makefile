.PHONY: pics default clean

default: pics
	latexmk
pics:
	make --directory=pics pics
clean:
	latexmk -c
	find ./ -maxdepth 1 -name "*.fls" -delete
	make --directory=pics clean

pprev:
	make --directory=pics prev
