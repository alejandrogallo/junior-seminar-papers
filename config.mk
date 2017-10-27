BUILD_DIR = build

README.md: main.tex ## Create the README.md out of the main.tex
	-$(PANDOC) -f latex -t markdown_github $< -o $@

choose-random-paper: ## Choose a random paper
	@grep item papers.tex | \
	wc -l | \
	xargs -n1 seq 1 | \
	sort -R | head -1

DEPENDENCIES = README.md $(DEFAULT_DEPENDENCIES)
