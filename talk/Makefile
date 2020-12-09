HANDOUTS:=$(patsubst %.md,%_handout.pdf,$(wildcard [!R][!E][!A][!D]*.md))
SLIDES:=$(patsubst %.md,%_slides.pdf,$(wildcard [!R][!E][!A][!D]*.md))

DO_PANDOC=pandoc --citeproc -o

all: handouts slides

handouts: $(HANDOUTS)

slides: $(SLIDES)

%_slides.pdf: %.md
	# No references, beamer output.
	gpp -H $< | $(DO_PANDOC) $@ -t beamer

%_handout.pdf: %.md
	# References at end, standard pdf output.
	gpp -H -DHANDOUT=1 $< | $(DO_PANDOC) $@

clean:
	rm *.pdf
