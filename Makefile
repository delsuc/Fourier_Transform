.SUFFIXES: .html, .ipynb

all: *.html

%.html: %.ipynb
	jupyter nbconvert --to html $<
	cp $@ HTML