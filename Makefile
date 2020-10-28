RELEASE_TAG  =release-daprme-v0.6.3


all: help

tag: ## Creates release tag 
	git tag $(RELEASE_TAG)
	git push origin $(RELEASE_TAG)
.PHONY: tag

help: ## Display available commands
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk \
		'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
.PHONY: help