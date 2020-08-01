MDS:=optional_attachments.md
PDFS:=$(patsubst %.md,%.pdf, $(MDS))

DO_PANDOC=pandoc --filter pandoc-citeproc -o

all: pdfs

pdfs: $(PDFS)

%.pdf: %.md
	# References at end, standard pdf output.
	gpp -H -DHANDOUT=1 $< | $(DO_PANDOC) $@

clean:
	rm -f $(PDFS)
