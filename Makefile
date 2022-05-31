build: ## Build the website
	@hugo

serve: ## Serve the website
	@hugo serve

install:
	@yarn && yarn playwright:install

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.* ?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: all $(MAKECMDGOALS)
.DEFAULT_GOAL := help
