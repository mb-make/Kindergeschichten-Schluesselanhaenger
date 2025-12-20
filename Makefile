
SHELL := /bin/bash -l -o pipefail


.PHONY: all
all: concat.pdf

concat.pdf: vorne.pdf hinten.pdf
	pdftk $^ cat output $@

%.pdf: %.svg
	svg2pdf $<

.PHONY: clean
clean:
	rm -vf {vorne,hinten,concat}.pdf
