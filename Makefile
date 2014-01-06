
TARGET=welcome-it.rst

DOT=$(wildcard images/*.dot)
SVG=$(wildcard images/*/*.svg)

all: project

project: $(TARGET:.rst=.pdf)

%.tex: %.rst
	rst2latex $(<) > $(@)

#%.pdf: %.svg
#	inkscape --export-pdf $(@) $(<)

%.aux: project

%.svg: %.dot

	twopi -Tsvg -o$(@) $(<)

bib: $(TARGET:.rst=.bbl)

%.bbl: %.aux

	bibtex $(<)
	touch $(<:.aux=.tex)

%.pdf: %.tex $(SVG:.svg=.pdf) $(DOT:.dot=.pdf)

	pdflatex $(<)
	touch $(<) #to make sure we can run several time pdflatex

clean:
	rm -f *.bbl *.blg *.aux *.log *.snm *.out *.toc *.nav *intermediate *~ *.glo *.ist $(TARGET:.rst=.tex) $(SVG:.svg=.pdf) $(DOT:.dot=.svg) $(DOT:.dot=.pdf)

distclean: clean
	rm -f $(TARGET:.rst=.pdf)

# do not delete intermediary .tex files: we need them to re-run pdflatex if needed
.SECONDARY: $(TARGET:.rst=.tex)
