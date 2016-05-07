SRC = $(wildcard ./*.eps)
PDF = $(subst .eps,.pdf,$(SRC))

%.pdf : %.eps
		cat $< | epstopdf --filter | pdfcrop - $@;\

pics: $(PDF)
