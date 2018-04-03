.SUFFIXES: .html, .ipynb

all: *.html

%.html: %.ipynb
	~/anaconda2/bin/jupyter nbconvert --to html $<
	cp $@ HTML