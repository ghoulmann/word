---
title: About the Writing Quality Ontology
description: What WQO is, where it comes from, and how it connects to related tools.
tags: []
---

# About the Writing Quality Ontology

## What it is

The Writing Quality Ontology (WQO) is a systematic, comprehensive domain ontology for literacy, composition, rhetoric, publishing, and writing technology. It classifies writing-quality concerns the way geopolitical event databases classify events: systematically, across multiple independent dimensions, covering a domain completely rather than collecting observations ad hoc.

Each concern in the ontology is described across 13 dimensions: which editorial layer it belongs to, at what stage of the writing process it first becomes relevant, how deterministic it is (always wrong vs. a risk factor vs. a philosophy), who should detect it, who owns fixing it, what reader impact failure produces, and which audience profiles carry elevated risk. These dimensions are not tags — they encode relationships that determine when concerns should be addressed and in what order.

## Where it comes from

WQO is structurally analogous to CAMEO (Conflict and Mediation Event Observations), a systematic classification schema for geopolitical events. CAMEO classifies events across independent dimensions to enable consistent observation and analysis across diverse contexts. WQO applies the same principle to writing quality: instead of asking "what should we check?" and adding rules ad hoc, it asks "what is the complete structure of this domain?" and classifies from first principles.

The [dateline project](https://github.com/ghoulmann/dateline) implements CAMEO for crisis journalism monitoring. WQO is the same structural approach applied to the literacy domain.

## What it covers now and what it will cover

**Current scope:** 37 concerns classified across 13 dimensions, plus 96 operational problems that describe where in the documentation lifecycle quality failures originate.

This is the first systematized instantiation of the ontology — a coverage of the most consequential concerns, not a complete enumeration of the full domain. The full scope includes the entire span of literacy, composition, rhetoric, formal publishing, and writing technology. Expansion is systematic: each addition must be justified by classification, not by anecdote.

## Related projects

| Project | What it does |
|---|---|
| [rhetor-linter](https://github.com/ghoulmann/rhetor-linter) | Rhetoric linter that operationalizes WQO concerns as detection rules; rule coverage is mapped against concern IDs |
| [jtbd-tool](https://github.com/ghoulmann/jtbd-tool) | Jobs-to-be-Done auditor; scans codebases for user jobs and flags documentation coverage gaps; feeds gap signals back to WQO coverage decisions |
| [dateline](https://github.com/ghoulmann/dateline) | Crisis journalism monitor implementing CAMEO event taxonomy; structural exemplar for WQO |
| [wqo schema repo](https://github.com/ghoulmann/wqo) | The underlying YAML schema, problem catalog, and generators |

## Navigate the ontology

[[index|← Back to the ontology]]
