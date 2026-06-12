# Writing Quality Ontology — Site

A typed-relationship ontology of writing quality concepts, published as a static site with Quartz v5.

Live site: **https://ghoulmann.github.io/word/**

## Prerequisites

- Node.js ≥ 22
- npm ≥ 10.9.2

## First-time setup

```bash
make install
```

This runs `npm ci` (Node dependencies) then `npx quartz plugin install` (Quartz community plugins from `quartz.lock.json`). Re-run the plugin step if `quartz.lock.json` changes after a pull.

## Local development

```bash
make serve           # http://localhost:8080, live-reload
make serve PORT=9070 # different port
```

Quartz's `--serve` mode automatically sets the base path to `/` regardless of the `baseUrl` in `quartz.config.yaml`. All URLs work at the root — no `/word` prefix. This is the canonical local dev workflow.

## Committing and deploying

```bash
make sync
```

`npx quartz sync` stages and commits content changes, then pushes to `main`. The GitHub Actions workflow in `.github/workflows/deploy.yml` picks up the push and deploys to GitHub Pages automatically.

If you need more control over the commit message, use git directly and push to `main`.

## Static builds

```bash
make build          # production build (ghoulmann.github.io/word)
make build-local    # local build — URLs at http://localhost:8080, no /word prefix
```

Static builds are for inspecting output or deploying elsewhere. For day-to-day previewing, `make serve` is faster and more convenient.

> **Why two build targets?**
> `baseUrl: ghoulmann.github.io/word` in `quartz.config.yaml` tells the SPA router
> to prepend `/word` to all navigation. That is correct on GitHub Pages (the repo is
> served at that subpath) but breaks a plain static server at `/`.
> `make build-local` passes `--baseUrl localhost:8080` to override it.

## Content

All content lives in `content/`. Edit files there and `make serve` hot-reloads.

| Directory | What goes here |
|-----------|---------------|
| `content/lexicon/` | One `.md` per concept (34 entries) |
| `content/framework/` | Theory pages (five-layers, triage, etc.) |
| `content/layers/` | Aggregated views by editorial layer |
| `content/writing-process/` | Concepts by writing stage |
| `content/engineering-design/` | Concepts by engineering design stage |
| `content/by-role/` | Concepts by responsible role |
| `content/by-impact/` | Concepts by downstream impact |
| `content/by-audience/` | Concepts by audience sensitivity |
| `content/reference/` | Glossary, bibliography, cheat sheet |

## Plugin management

```bash
# Install from lockfile (normal)
npx quartz plugin install

# Install and update to latest versions
npx quartz plugin install --latest

# Add a new plugin
npx quartz plugin add github:quartz-community/<name>
```

## Makefile targets

```
make serve          live-reload dev server (use this for day-to-day editing)
make build          production build
make build-local    local static build (no /word prefix)
make install        first-time setup (deps + plugins)
make deps           npm ci only
make plugins        quartz plugin install only
make sync           commit + push content to trigger deploy
make clean          remove public/
```
