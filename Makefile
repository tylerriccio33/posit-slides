.PHONY: preview render clean open help

help: ## Show this help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-10s\033[0m %s\n", $$1, $$2}'

preview: ## Live-reload preview of the deck in the browser
	quarto preview index.qmd

render: ## Render the deck to docs/ (static HTML)
	quarto render index.qmd --output-dir docs

clean: ## Remove rendered/cache output
	rm -rf docs _site .quarto index_files

open: render ## Render then open the rendered deck
	open docs/index.html
