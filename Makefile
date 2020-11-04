RELEASE_TAG  =v0.6.2

all: help

tag: ## Creates release tag 
	git tag $(RELEASE_TAG)
	git push origin $(RELEASE_TAG)
.PHONY: tag

tag-deleted:
	git tag -d $(RELEASE_TAG)
.PHONY: tag-deleted

help: ## Display available commands
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk \
		'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
.PHONY: help