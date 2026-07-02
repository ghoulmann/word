---
title: Asset Validity
description: The integrity and accessibility of linked or embedded resources in a document — URLs, images, files, embedded media — ensuring they resolve correctly and remain accessible.
also_known_as:
  - link integrity
  - hyperlink validation
  - broken link detection
wordnet:
  term: integrity
  definitions:
    - "an undivided or unbroken completeness or totality with nothing wanting"
    - "the quality of being honest and having strong moral principles"
  synonyms:
    - wholeness
    - completeness
  related_forms:
    - integrate
    - integer
classification:
  layer: [functional, computational]
  stage: post-compositional
  scale: document-level
  concern_type: technical
  evaluator: [automated, human-technical-qa]
  determinism: rule-violation
  writing_stage: [publishing]
  address_when: publishing
  engineering_stage: [test, communicate]
  impact: [rendering, reader-trust]
  risk_severity: functional
  responsible_role: technical-qa
relationships:
  related_to: [tokenomics, chunking, information-design]
  increases_risk_of: reader-trust
diagnostic_question: >
  Do all links, images, and embedded resources in this document resolve
  correctly? Will they continue to resolve after publishing?
evaluation_tools:
  - Broken link checker (e.g., htmltest, linkchecker, Quartz build)
  - CI/CD link validation step
  - Manual spot-check of external links
analogy:
  writing_concept: asset-validity
  engineering_equivalent: dependency-integrity
  shared_property: referenced-artifact-exists-and-resolves
  failure_mode: broken-dependency-fails-silently-at-use-time
tags: [lexicon, layer:functional, layer:computational, writing-stage:publishing, concern-type:technical]
---

# Asset Validity

Asset validity is the concern that all linked and embedded resources in a document — URLs, images, files, data sources, embedded media — exist, are accessible, and will continue to be accessible after publication.

It is a binary, rule-violation concern at the publishing stage: a broken link is broken; a missing image is missing. There is no "somewhat broken" — the resource either resolves or it doesn't.

## Types of Asset Failures

**Broken hyperlinks**: the target URL returns a 404 or other error. Common causes: the target was moved or deleted, the domain expired, the URL was typed incorrectly, or the URL contained characters that need encoding.

**Relative path errors**: links in a document that use relative paths (`../images/figure1.png`) break when the document is moved or the directory structure changes.

**Missing images and media**: embedded images that reference non-existent files, or files that exist during authoring but are not included in the deployment.

**Inaccessible external resources**: links to paywalled content, content requiring authentication, or geographically restricted content that the reader cannot reach.

**Link rot**: external URLs that were valid at time of publishing but later return errors as the target site changes. Link rot is a persistent concern for long-lived documents.

## When to Address

Asset validity is addressed at the `publishing` stage — it is largely irrelevant before then. During authoring and revision, links point to draft or local resources that may not be stable. Asset validation is a pre-publication quality check, typically automated.

## Automated Validation

Link checking is fully automatable. Tools like `htmltest`, `linkchecker`, and built-in CI/CD link validation steps can check all internal and external links in a document set at build time. Quartz builds validate internal wikilinks. External links require HTTP requests and are more expensive to check frequently, but can be run as part of a scheduled CI job.

**Engineering parallel:** Asset validity maps to *dependency integrity* — both require that every referenced artifact exist and resolve at use time; both fail silently: a broken link and a missing library are invisible until the moment a reader or build process tries to follow them.