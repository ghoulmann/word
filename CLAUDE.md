# quartz-site — Project Notes

## What this repo is

The deployed navigable form of the Writing Quality Ontology (WQO). Built on Quartz v5 (static site generator). Published at `ghoulmann.github.io/word`.

GitHub remote: `origin` → `https://github.com/ghoulmann/word.git`
Upstream Quartz: `upstream` → `https://github.com/jackyzha0/quartz.git`

## Build commands

```
npm ci
npx quartz build
npx quartz sync          # build + push to GitHub Pages
```

## Plugin system

Plugins are managed via `quartz.lock.json`. To install a plugin:
```
npx quartz plugin install
```

## Critical dependency: wqo-components

This site depends on `~/Documents/github/wqo-components/` (Preact component library). The workflow resolves it from `github:ghoulmann/wqo-components` pinned at commit `a0b3b25` in `quartz.lock.json`.

**Local changes to `wqo-components/` are invisible to CI until:**
1. Changes are pushed to `ghoulmann/wqo-components` on GitHub
2. The lock file is updated here to reference the new commit

Deleting or renaming `wqo-components/` does not immediately break CI — it breaks the next lock update cycle.

## Ecosystem position

This site is the practitioner-facing publication layer of the WQO ecosystem:
- **Upstream**: `~/Documents/github/wqo/` — schema source (concerns/*.yaml, problems/*.yaml)
- **Content**: `content/lexicon/*.md` — hand-authored concept nodes with WordNet, typed relationships, `engineering_stage`; richer than the generated YAML
- **Downstream**: nothing — this is the terminal display layer

The `lexicon/*.md` files include dimensions intentionally excluded from the tool-facing YAML (`wordnet`, `relationships`, `engineering_stage`, `cascade_threshold`). These two representations are parallel, not competing.

Full ecosystem context: `~/Documents/github/wqo/.notes/ecosystem.md`

## Content structure

- `content/lexicon/` — WQO concept nodes (one .md per concern)
- `content/about.md` — practitioner front door with intent, CAMEO lineage, related projects
- `content/index.md` — landing page / entry point
- `quartz/` — Quartz framework (do not edit)
- `plugins/` — custom Quartz plugins
