---
title: SEO and Discoverability
description: The degree to which published content is indexable, findable, and accurately represented in search results — canonical URLs, sitemap coverage, robots.txt configuration, and structured data markup.
also_known_as: [search discoverability, search optimization, organic findability]
classification:
  layer: functional
  stage: post-compositional
  scale: [document-level, system-level]
  concern_type: technical
  evaluator: [automated, human-technical-qa]
  determinism: risk-factor
  writing_stage: [publishing]
  address_when: publishing
  impact: [seo-discoverability, reader-trust]
  risk_severity: functional
  responsible_role: [publisher, technical-qa]
relationships:
  related_to: [metadata-completeness, asset-validity, temporal-accuracy]
tags: [lexicon, taxonomy:wqo, layer:functional, concern-type:technical]
---

# SEO and Discoverability

Discoverability is the technical property that determines whether a search engine can find, index, and correctly represent a documentation page in search results. High-quality content that cannot be indexed is effectively invisible to readers who arrive via search — which is most readers.

Discoverability is a publishing concern, not an authoring concern. The content may be excellent and the prose clear, but if `robots.txt` disallows crawling, if canonical URLs are missing or incorrect, if the sitemap is stale — readers who search for the content will not find it.

## Technical factors

**Crawlability**: `robots.txt` must allow search engine crawlers access to documentation URLs. A common failure mode is a staging-environment robots.txt (which correctly disallows indexing) being deployed to production.

**Canonical URLs**: Duplicate content at multiple URLs should be resolved by canonical link tags pointing to the preferred URL.

**Sitemap coverage**: `sitemap.xml` must include all current URLs. After navigation restructures, sitemaps must be regenerated — stale sitemaps delay indexing of new content and maintain references to deleted pages.

**Structured data**: `schema.org` JSON-LD enables rich results: how-to steps, FAQ entries, breadcrumbs, article metadata.

## Relationship to content quality

SEO and discoverability are necessary but not sufficient conditions for organic traffic. The content must also match search intent ([[rhetorical-situation]]), use [[controlled-vocabulary]] that matches search queries, and have sufficient [[semantic-density]] to be ranked as authoritative. Technical discoverability enables search; content quality determines ranking.
