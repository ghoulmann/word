---
title: Definition Completeness
description: The requirement that every term of art, acronym, or domain-specific concept introduced in a document is defined at or before its first use, ensuring readers can engage without external reference.
also_known_as: [term introduction, glossary completeness, acronym definition]
classification:
  layer: structural
  stage: compositional
  scale: [word-level, document-level]
  concern_type: logical
  evaluator: [human-line-editor, automated]
  determinism: rule-violation
  writing_stage: [revising, editing]
  address_when: revising
  impact: [reader-comprehension, accessibility-cognitive]
  risk_severity: functional
  responsible_role: [author, line-editor, structural-editor]
relationships:
  related_to: [controlled-vocabulary, structural-completeness, audience-awareness]
  subtype_of: structural-completeness
tags: [lexicon, taxonomy:wqo, layer:structural, concern-type:logical]
---

# Definition Completeness

Definition completeness requires that a document define every term a reader cannot be assumed to know at the moment of first encounter. The assumption about what readers already know is derived from [[audience-awareness]]: a document written for domain experts may assume terminology that a document written for domain novices must define.

Undefined terms create a dependency: the reader must either abandon reading to look up the term, or continue reading without understanding it and hope context resolves it. Both outcomes degrade comprehension and signal a mismatch between the document's assumptions about its audience and its actual audience.

## Scope of the requirement

**Acronyms**: All acronyms should be spelled out at first use — especially in technical documentation where the same acronym can mean different things in different domains.

**Terms of art**: Domain-specific terms that have precise technical meanings different from their everyday meanings — "idempotent," "atomic," "eventually consistent" — should be defined when first used unless the audience can be reliably assumed to know them.

**Pronouns with ambiguous referents**: Pronouns that could refer to multiple recently mentioned concepts create comprehension failures that are effectively undefined-reference failures.

## Relationship to controlled vocabulary

[[controlled-vocabulary]] governs which term is used; definition completeness governs whether that term is introduced. They work together: a controlled vocabulary ensures the term is consistent; definition completeness ensures the reader understands it.
