---
title: Source Integrity
description: The degree to which claims in a document are traceable to authoritative, verifiable, and current sources; source integrity fails when claims cannot be attributed, sources are outdated, or references are fabricated.
also_known_as: [citation integrity, factual grounding, claim traceability]
classification:
  layer: functional
  stage: compositional
  scale: [document-level]
  concern_type: technical
  evaluator: [human-structural-editor, human-peer-reviewer]
  determinism: risk-factor
  writing_stage: [drafting, peer-review]
  address_when: drafting
  impact: [reader-trust, author-credibility]
  risk_severity: credibility
  responsible_role: [author, peer-reviewer, structural-editor]
relationships:
  related_to: [informal-fallacy, temporal-accuracy, reader-trust, citation-completeness]
  prerequisite_for: reader-trust
analogy:
  writing_concept: every claim traceable to a verifiable authoritative source
  engineering_equivalent: requirements traceability
  shared_property: every decision or claim must link to an authoritative source; untraced claims are unverifiable and unauditable
  failure_mode: published claim contradicts the standard it claims to cite; requirement implemented without a traceable source cannot be justified to auditors
tags: [lexicon, taxonomy:wqo, layer:functional, concern-type:technical]
---

# Source Integrity

Source integrity is the property of a document whose non-trivial claims can be traced to verifiable, authoritative, and current sources. A document with high source integrity allows a reader to independently verify its claims; a document with low source integrity makes it impossible to distinguish between verified fact, author inference, and fabrication.

Source integrity is not the same as accuracy. A document can be accurate and have poor source integrity (all claims are correct, but none are attributed). The distinction matters in professional and technical contexts where readers need to know not just what is true but why they should believe it is true.

## Failure modes

**Unattributed claims**: Assertions stated as facts without citation. Particularly dangerous for empirical data, statistics, regulatory requirements, and standards references.

**Stale sources**: References to outdated versions of standards, superseded research, or deprecated specifications. A citation that was accurate in 2019 may be misleading today — overlapping with [[temporal-accuracy]].

**Fabricated or misattributed references**: In AI-assisted writing, [[hallucination-risk]] makes this failure mode especially relevant — a confident-sounding reference to a nonexistent paper is indistinguishable from a legitimate citation without independent verification.

## Relationship to formal fallacy

[[informal-fallacy]] addresses logical gaps in arguments. Source integrity addresses evidentiary gaps: the premises may be logically sound but the supporting evidence is missing, unverifiable, or wrong. Both undermine [[reader-trust]]; source integrity failures are specifically evidentiary.

**Engineering parallel:** Source integrity maps to *requirements traceability* — both require that every claim be traceable to an authoritative source; both fail when a decision or claim is accepted without a documented, verifiable basis.
