# Writing Quality Ontology — Site

A typed-relationship ontology of writing quality concepts, published as a static site with Quartz v5.

## Prerequisites

- Node.js ≥ 22
- npm ≥ 10.9.2

## First-time setup

Install Node dependencies and then the Quartz community plugins:

```bash
npm ci
npx quartz plugin install
```

You only need to re-run `plugin install` when `quartz.lock.json` changes (i.e. after pulling a commit that adds or updates plugins).

## Local development

```bash
make serve          # live-reload dev server at http://localhost:8080
make serve PORT=9070   # use a different port
```

The dev server builds with an empty base path so all URLs work at `/` — no `/word` prefix.

If you need to preview a static build (e.g. to check build output without a watcher), build for local and serve separately:

```bash
make build-local    # builds public/ for http://localhost:8080
make build          # builds public/ for the production URL (ghoulmann.github.io/word)
```

> **Why two build targets?**  
> `baseUrl: ghoulmann.github.io/word` in `quartz.config.yaml` tells the SPA router to  
> prepend `/word` to all navigation URLs. That is correct for GitHub Pages (the repo is  
> served at `/word`), but it breaks a server that serves `public/` at the root.  
> `make build-local` overrides the base URL so pages work at `http://localhost:PORT/`.

## Deploying

Push to `main`. GitHub Actions runs `.github/workflows/deploy.yml` which:

1. Installs Node dependencies (`npm ci`)
2. Restores or populates the plugin cache (keyed on `quartz.lock.json`)
3. Installs Quartz community plugins (`npx quartz plugin install`)
4. Builds the site (`npx quartz build`)
5. Deploys `public/` to GitHub Pages

The live site is at **https://ghoulmann.github.io/word/**.

## Content

All content lives in `content/`. Edit files there and the dev server hot-reloads.

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

## Updating plugins

To pull the latest version of a community plugin:

```bash
npx quartz plugin install --latest
```

To add a new plugin from GitHub:

```bash
npx quartz plugin add github:quartz-community/<name>
```
