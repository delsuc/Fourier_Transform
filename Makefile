.SUFFIXES: .html, .ipynb
.PHONY : done clean all
html := $(patsubst %.ipynb,%.html,$(wildcard *.ipynb))

done: all clean

all: $(html)

clean:
	mv *.html HTML

%.html: %.ipynb
	~/anaconda/bin/jupyter nbconvert --to html $<