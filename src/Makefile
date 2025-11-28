NAME    = grlnotes
PDF     = $(NAME).pdf
REQUIRE = $(NAME).tex

TEX     = latexmk -lualatex
MODE    = -interaction=nonstopmode -synctex=1 -shell-escape

RM      = rm -f
INSTALL = cp

all: $(PDF)

$(PDF): $(REQUIRE)
	$(TEX) $(MODE) $(NAME)

install: all
	$(INSTALL) $(NAME).pdf ..

clean:
	$(TEX) -C $(NAME).tex

distclean: clean
	$(RM) ../$(NAME).pdf

.PHONY: all install clean distclean
