---
title: Version Integrity
description: The guarantee that published content matches the reviewed and approved draft — no post-review edits bypass approval, and version-tagged documentation matches the tagged code release.
also_known_as: [publication integrity, release integrity, doc-code version alignment]
classification:
  layer: functional
  stage: post-compositional
  scale: [document-level, system-level]
  concern_type: technical
  evaluator: [automated, human-technical-qa]
  determinism: risk-factor
  writing_stage: [publishing]
  address_when: publishing
  impact: [reader-trust, rag-retrieval]
  risk_severity: functional
  responsible_role: [publisher, technical-qa]
relationships:
  related_to: [code-doc-drift, temporal-accuracy, asset-validity]
  controlled_by: temporal-accuracy
analogy:
  writing_concept: guarantee that what is published is what was reviewed and approved
  engineering_equivalent: artifact provenance
  shared_property: both establish a verifiable chain of custody from review/approval to delivery; both fail when the delivered artifact cannot be traced to a specific approved version
  failure_mode: post-review edit published without re-review; production binary differs from the reviewed build artifact
tags: [lexicon, taxonomy:wqo, layer:functional, concern-type:technical]
---

# Version Integrity

Version integrity is the guarantee that what is published is what was reviewed. It has two dimensions: review integrity (the published artifact matches the approved draft) and release alignment (version-tagged documentation describes the corresponding version of the code or product).

Review integrity failures are the simpler case: a post-review edit, a deployment error, or a build process that includes drafts — any of these can cause readers to read content that was never reviewed or approved.

## Release alignment

Version-tagged documentation introduces a more complex alignment requirement. When a library releases version 2.0, the documentation tagged as 2.0 must describe version 2.0 exactly — not version 1.9 with addendums, not version 2.0 with forward references to 2.1. Misaligned version tags are a specific form of [[code-doc-drift]] that is especially damaging because the version tag creates an explicit, searchable claim about accuracy.

## Versioned documentation serving failures

When documentation sites serve version-specific content based on URL path or dropdown selection, version serving logic must use semver-aware comparison. String comparison (`"2.10" < "2.9"`) produces incorrect version ordering and may serve the wrong documentation to users on a given release.

**Engineering parallel:** Version integrity maps to *artifact provenance* — both establish a verifiable chain of custody from review/approval to delivery; both fail when the artifact delivered to users cannot be traced back to a specific approved version.
