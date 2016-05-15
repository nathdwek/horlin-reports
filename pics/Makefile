.PHONY: pics prev saw-it clean

SRC = $(wildcard ./*.eps)
PDF = $(subst .eps,.pdf,$(SRC))
PREVIEW = $(subst .eps,.lastviewed,$(SRC))

%.pdf: %.eps
	cat $< | epstopdf --filter | pdfcrop - $@;

pics: $(PDF)

%.lastviewed: %.pdf
	xdg-open $< > $@

prev: $(PREVIEW)

saw-it:
	touch $(PREVIEW)

clean:
	touch $(SRC)
