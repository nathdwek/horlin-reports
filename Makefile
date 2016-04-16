figs:
	for img in pics/*.eps; do\
		cat "$$img" | epstopdf --filter | pdfcrop - "$${img%.eps}.pdf";\
	done;
