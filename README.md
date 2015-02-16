# latex-mla-template

> A basic template for generating mla formatted essays.


## Prerequisites

- `make`
- Some recent distribution of LaTeX (TeXLive, MacTeX, MiKTeX, etc)
- [mla-paper](http://ctan.org/pkg/mla-paper)
- [txfonts](http://ctan.org/pkg/txfonts)
- [latexmk](http://ctan.org/pkg/latexmk)


## Installation and Usage

    $ git clone https://github.com/trotod/latex-mla-template <project-name>
    $ cd <project-name>
    $ rm -rf .git
    $ # optionally set up version control
    $ $EDITOR main.tex # change essay info
    $ $EDITOR essay.tex # type your essay
    $ $EDITOR workscited.tex # add workscited entries


## Building

    $ make # creates the pdf and a zip of the pdf and source

Then look in `dist/` for the compiled output.


## Packaging

    $ make zipball # zip format
    $ make tarball # tar.gz format

Then look in `dist/` for the archives.
