---
title: Citation Completeness
description: The requirement that all claims requiring attribution — quoted material, empirical data, regulatory requirements, standards references — include a verifiable citation that enables readers to locate the source.
also_known_as: [reference completeness, source attribution, footnote completeness]
classification:
  layer: functional
  stage: compositional
  scale: [sentence-level, document-level]
  concern_type: technical
  evaluator: [human-peer-reviewer, human-structural-editor, automated]
  determinism: rule-violation
  writing_stage: [revising, peer-review]
  address_when: revising
  impact: [reader-trust, author-credibility]
  risk_severity: credibility
  responsible_role: [author, peer-reviewer, structural-editor]
relationships:
  related_to: [source-integrity, informal-fallacy, reader-trust]
  subtype_of: source-integrity
analogy:
  writing_concept: every attributed claim carries a citation that enables readers to locate and verify the source
  engineering_equivalent: dependency declaration in a package manifest
  shared_property: both require that every external dependency be explicitly declared with enough information to resolve it; both fail when a transitive dependency is assumed rather than declared
  failure_mode: published claim cites a standard edition that has been superseded; package.json omits a peer dependency that works locally but fails in CI
tags: [lexicon, taxonomy:wqo, layer:functional, concern-type:technical]
---

# Citation Completeness

Citation completeness requires that every claim requiring attribution carries a citation that enables readers to independently locate and verify the source. Not all claims require citation — claims that are matters of common knowledge, operational descriptions derived from direct observation, and the author's own analysis do not need external attribution. But empirical data, statistical claims, direct quotations, regulatory requirements, standards references, and third-party research all require citations.

## What constitutes a complete citation

A citation is complete when a motivated reader can use it to locate the source material:

- **Journal article**: Authors, title, journal, volume, issue, pages, year, DOI or URL
- **Web resource**: Author or organization, title, URL, and access date (for content that may change)
- **Standard or regulation**: Issuing body, standard number, title, version, section
- **Book**: Authors, title, edition, publisher, year, page range

Incomplete citations — "According to a recent study" or "Research shows" — are not citations. They assert authority without enabling verification.

## Relationship to source integrity

[[source-integrity]] is the broader concern: every claim is traceable to a verifiable source. Citation completeness is the publishing-facing enforcement of source integrity: the claim must not only be traceable by the author but traceable by the reader.

[[informal-fallacy]] includes appeals to unverified authority; citation completeness prevents the authoring pattern that makes such appeals possible.

**Engineering parallel:** Citation completeness maps to *dependency declaration in a package manifest* — both require that every external dependency be explicitly declared with enough information to resolve it; both fail when a transitive dependency is assumed rather than declared.
