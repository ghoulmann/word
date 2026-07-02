---
title: Code-Documentation Drift
description: The progressive divergence of documentation from the codebase or system it describes, caused by code changes that are not reflected in accompanying documentation.
also_known_as: [documentation staleness, doc rot, code-doc mismatch]
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
  responsible_role: [author, technical-qa, publisher]
relationships:
  controlled_by: temporal-accuracy
  related_to: [asset-validity, version-integrity]
  increases_risk_of: reader-trust
analogy:
  writing_concept: documentation that was accurate when written but diverges from system changes
  engineering_equivalent: configuration drift
  shared_property: declared state diverges from actual state; invisible until something acts on the stale declaration
  failure_mode: API caller follows documented interface that no longer exists; config deployer applies base that no longer matches live state
tags: [lexicon, taxonomy:wqo, layer:functional, concern-type:technical]
---

# Code-Documentation Drift

Code-documentation drift is the gradual divergence between what a system does and what its documentation says it does. It is not an authoring failure — the documentation was accurate when written — but a maintenance failure: code changed, documentation did not.

Drift is invisible at the moment it begins. A method is renamed, a parameter is removed, a default changes — and the documentation continues to describe the old behavior with full authority. Readers following the documentation encounter failures that appear to be their own errors until they discover the documentation is wrong.

## Why drift accelerates

Documentation drift compounds over time because each undocumented change makes the documentation slightly less reliable, which reduces trust in the documentation, which reduces the motivation to keep it current. Teams that allow drift to begin typically see it accelerate — the documentation becomes a liability rather than an asset.

The most dangerous drift is in reference documentation for APIs and CLIs: parameter names, required fields, error codes, and return types are tested against the documentation by integrators, and silent changes here produce production failures at the point of integration, not at authoring time.

## Detection and control

[[temporal-accuracy]] is the parent concern: drift is a specific manifestation of stale content. Unlike general staleness, code-doc drift can be detected automatically by parsing code and documentation in parallel and comparing declared interfaces against documented interfaces. CI gates that run doc-coverage checks at commit time are the primary resolution pattern.

**Engineering parallel:** Code-documentation drift maps to *configuration drift* — both describe the accumulated divergence between a declared state and the actual state of a system; both are invisible at the moment they begin and only surface when something downstream tries to act on the declared state.
