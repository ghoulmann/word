PORT     ?= 8080
WS_PORT  ?= 3001
QUARTZ   := npx quartz

.PHONY: serve build build-local deps plugins install sync clean help

## Start the live-reload dev server at http://localhost:PORT
##   Base path is automatically empty — no /word prefix
serve:
	$(QUARTZ) build --serve --port $(PORT) --wsPort $(WS_PORT)

## Build for production (ghoulmann.github.io/word)
build:
	$(QUARTZ) build

## Build for local static serving at http://localhost:PORT (no /word prefix)
build-local:
	$(QUARTZ) build --baseUrl localhost:$(PORT)

## Install Node.js dependencies
deps:
	npm ci

## Install Quartz community plugins from quartz.lock.json
plugins:
	$(QUARTZ) plugin install

## First-time setup: deps + plugins
install: deps plugins

## Commit content changes and push to GitHub (triggers deploy)
sync:
	$(QUARTZ) sync

## Remove the built output
clean:
	rm -rf public/

help:
	@echo "Usage: make [target] [PORT=8080]"
	@echo ""
	@grep -E '^## ' Makefile | sed 's/## /  /'
	@echo ""
	@echo "Variable: PORT (default 8080) — override with e.g. make serve PORT=9070"
