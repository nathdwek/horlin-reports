.PHONY: default pics prev saw-it clean

SRC = $(wildcard ./src/*.eps)
PDF = $(notdir $(subst .eps,.pdf,$(SRC)))
PREVIEW = $(subst .eps,.lastviewed,$(SRC))

default: pics

%.pdf: ./src/%.eps
	cat $< | epstopdf --filter | pdfcrop - $@;

pics: $(PDF)

./src/%.lastviewed: %.pdf
	xdg-open $< > $@

prev: $(PREVIEW)

saw-it:
	touch $(PREVIEW)

clean:
	rm $(PDF)
