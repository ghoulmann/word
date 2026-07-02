---
title: Metadata Completeness
description: The presence and accuracy of all machine-readable metadata required for discovery, sharing, and indexing — page title, meta description, Open Graph tags, schema.org markup, and canonical URL.
also_known_as: [SEO metadata, page metadata, structured metadata]
classification:
  layer: functional
  stage: post-compositional
  scale: [document-level]
  concern_type: technical
  evaluator: [automated, human-technical-qa]
  determinism: rule-violation
  writing_stage: [publishing]
  address_when: publishing
  impact: [seo-discoverability, reader-trust]
  risk_severity: functional
  responsible_role: [publisher, technical-qa]
relationships:
  related_to: [seo-discoverability, rendering-fidelity]
tags: [lexicon, taxonomy:wqo, layer:functional, concern-type:technical]
---

# Metadata Completeness

Metadata completeness means that every published page carries the full set of machine-readable information required for search engines, social platforms, and browsers to correctly index, preview, and classify it. The failure to provide this metadata is invisible to human readers who arrive at a page directly — but it degrades the experience for readers who arrive via search or shared links, and it can cause search engines to derive incorrect metadata from page content.

## Required metadata categories

**Search indexing**: `<title>` tag (distinct from H1); `<meta name="description">` (the snippet shown in search results); `<link rel="canonical">` (the authoritative URL for duplicate content).

**Social sharing**: Open Graph tags (`og:title`, `og:description`, `og:image`); Twitter Card tags. Without these, social platforms derive their own previews from page content — often incorrectly.

**Structured data**: `schema.org` JSON-LD markup enabling rich results (how-to steps, FAQ entries, breadcrumbs, article authorship). Missing structured data prevents documentation pages from appearing in enriched search results formats.

**Canonical URL**: Without a canonical declaration, search engines may index the same content at multiple URLs, diluting ranking signals.

## Automation

Metadata completeness is fully automatable: all required fields can be checked at build time. [[seo-discoverability]] addresses the broader search strategy; metadata completeness addresses the minimum required markup.
