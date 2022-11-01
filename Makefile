.PHONY: html
html:
	jupyter-book build --all docs/

.PHONY: pdf
pdf:
	jupyter-book build --all docs/ --builder pdflatex