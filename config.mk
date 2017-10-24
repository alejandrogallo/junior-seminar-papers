BUILD_DIR = build

README.md: main.tex ## Create the README.md out of the main.tex
	$(PANDOC) -f latex -t markdown_github $< -o $@
