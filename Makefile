.PHONY: pics default clean cleanall pprev prev

default: pics
	latexmk

pics:
	make --directory=pics pics

clean:
	latexmk -c
	find ./ -maxdepth 1 -name "*.fls" -delete

cleanall: clean
	make --directory=pics clean

pprev: pics
	make --directory=pics prev

prev: default
	xdg-open main.pdf 1>/dev/null 2>/dev/null &
