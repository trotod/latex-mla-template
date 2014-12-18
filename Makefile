FILES     := main.tex essay.tex workscited.tex style.sty
CC        := latexmk -pdf
NAME      := $(shell basename `pwd`)
PDF       := dist/$(NAME).pdf
ZIPBALL   := dist/$(NAME).zip
TARBALL   := dist/$(NAME).tar.gz

all: zipball ;
pdf: $(PDF)
zipball: $(ZIPBALL)
tarball: $(TARBALL)

$(PDF): $(FILES)
	$(CC) main.tex
	mkdir -p dist
	mv main.pdf $(PDF)

preview: $(FILES)
	$(CC) -pvc main.tex

$(ZIPBALL): $(FILES) $(PDF)
	zip $(ZIPBALL) $(FILES) $(PDF)

$(TARBALL): $(FILES) $(PDF)
	tar -czvf $(TARBALL) $(FILES) $(PDF)

clean:
	latexmk -C
	rm -f main.pdf

distclean: clean
	rm -rf dist

.PHONY: all clean distclean
