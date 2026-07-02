---
title: Temporal Accuracy
description: Whether content reflects the current state of what it describes — outdated content is functionally inaccurate regardless of its original quality.
also_known_as:
  - content currency
  - staleness
  - temporal validity
wordnet:
  term: temporal
  definitions:
    - "of or relating to time; subject to change over time"
    - "the property of content that makes it time-sensitive or time-dependent"
  synonyms:
    - current
    - up-to-date
  related_forms:
    - temporally
    - currency
classification:
  layer: functional
  stage: post-compositional
  scale: [document-level, system-level]
  concern_type: technical
  evaluator: [human-technical-qa, automated, human-information-architect]
  determinism: risk-factor
  writing_stage: [publishing, editing]
  address_when: publishing
  engineering_stage: [test, improve, communicate]
  impact: [reader-trust, reader-comprehension, rag-retrieval, legal-compliance]
  risk_severity: credibility
  responsible_role: [technical-qa, information-architect, publisher, author]
  audience_sensitivity: [domain-novice]
cascade_threshold: >
  A single outdated fact is a factual error. A document where the
  underlying system, process, or policy has changed but the document
  has not is systematically inaccurate — readers will act on wrong
  information and trust the document less for all subsequent use.
  For safety-critical content (procedures, dosages, regulatory
  requirements), temporal inaccuracy escalates from credibility risk
  to safety risk.
relationships:
  related_to: [asset-validity, controlled-vocabulary, information-design]
  increases_risk_of: [rag-retrieval, reader-trust]
  commonly_confused_with: asset-validity
  impediment_to: reader-trust
diagnostic_question: >
  Does the content accurately describe the current state of the system,
  process, or policy it covers, or has the subject changed since the
  content was last reviewed?
evaluation_tools:
  - Last-reviewed date tracking (frontmatter date field + review schedule)
  - Automated staleness alerts (docs-as-code: flag content not updated in N months)
  - Diff against source of truth (compare docs to API spec, changelog, or system state)
  - CI gate (build fails if content older than threshold for time-sensitive documents)
analogy:
  writing_concept: temporal-accuracy
  engineering_equivalent: configuration-management
  shared_property: recorded-state-matches-current-reality
  failure_mode: stale-state-propagates-as-authoritative
tags: [lexicon, layer:functional, writing-stage:publishing, concern-type:technical]
---

# Temporal Accuracy

Temporal accuracy is the property of content that makes it factually current — that it describes the state of the world, system, or process as it actually exists at the time of reading. A document that was accurate when written becomes inaccurate when the thing it describes changes, even if no word in the document has changed. Temporal accuracy is a functional concern: content that is outdated fails its reader regardless of its original quality.

This is different from other quality failures. A nominalization is a bad writing practice; passive voice is a stylistic risk; a broken link is a technical defect. Temporal inaccuracy is a truth failure: the content says something false about the world, not because it was written badly but because the world changed after it was written.

## Why It Matters

Readers use documentation to make decisions: how to configure a system, what a policy requires, how a process works. When the documentation is outdated, they make decisions based on wrong information. The trust failure that follows is often total: once a reader catches a significant inaccuracy, they discount the document for all purposes, even in sections that remain accurate.

For AI retrieval systems, temporal inaccuracy is particularly dangerous. A RAG system doesn't know a document is outdated — it retrieves and presents the content as authoritative. If the content describes a deprecated API, an old policy, or a changed procedure, the AI system confidently provides wrong information. The user has no way to know the document's age from the AI's answer.

For safety-critical content — clinical procedures, safety data sheets, regulatory compliance documents, product instructions — temporal inaccuracy can escalate from a credibility concern to a safety risk.

## Temporal Accuracy vs. Asset Validity

These are related but distinct. [[Asset-validity]] checks whether links, images, and referenced resources resolve — do they still exist? Temporal accuracy checks whether content is still true — does it still describe reality correctly? A link can resolve (asset-valid) to a page that is outdated (temporally inaccurate). A document can have no broken links while describing a process that was deprecated two years ago.

## How It Fails

**Undated content**: content without a last-reviewed date gives readers no signal about its currency. The reader cannot assess the risk of acting on it.

**No review process**: content without a scheduled review cadence drifts silently. Documentation systems that track creation date but not review date cannot detect staleness.

**Orphaned content**: documents whose subject has been discontinued, replaced, or deprecated, but which remain published. Retrieval systems surface them alongside current content.

**Silent procedure changes**: a procedural document updated in a related system (API changelog, policy PDF) but not reflected in human-facing documentation. The document and the system diverge without anyone noticing.

## Diagnosis

The diagnostic question: has the thing this document describes changed since the document was last reviewed? Apply the check at publish time and at scheduled review intervals. For high-change environments, also apply it at CI time: a docs-as-code pipeline can flag content that hasn't been touched in more than N months.

## Cascade Threshold

A single outdated fact is a factual error. A document whose underlying subject has materially changed is systematically wrong: every section that touches the changed topic is unreliable. For safety-critical content, a single outdated requirement, dosage, or procedure is potentially harmful. At that threshold, temporal inaccuracy is not an editorial concern — it's a content governance failure.

**Engineering parallel:** Temporal accuracy maps to *configuration management* — both require that recorded state match current reality; both fail when stale state is treated as authoritative and downstream decisions are made on obsolete information.