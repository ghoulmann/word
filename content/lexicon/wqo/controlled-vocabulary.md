---
title: Controlled Vocabulary
description: An authoritative, standardized set of terms used consistently across a documentation system or organization — eliminating ambiguity from variant names for the same concept.
also_known_as:
  - term standardization
  - terminology management
  - glossary control
  - taxonomy
wordnet:
  term: vocabulary
  definitions:
    - "a listing of the words used in some enterprise"
    - "all the words that a person knows and uses"
  synonyms:
    - lexicon
    - terminology
  related_forms:
    - term
    - terminology
classification:
  layer: [functional, computational]
  stage: pre-compositional
  scale: [word-level, system-level]
  concern_type: [architectural, computational]
  evaluator: [human-information-architect, automated]
  determinism: rule-violation
  writing_stage: [prewriting, editing, publishing]
  address_when: prewriting
  engineering_stage: [define, build, communicate]
  impact: [reader-comprehension, rag-retrieval, seo-discoverability]
  risk_severity: functional
  responsible_role: [information-architect, technical-qa, publisher]
relationships:
  commonly_confused_with: e-prime
  related_to: [terminology-consistency, house-style, tokenomics, chunking]
  controlled_by: information-design
diagnostic_question: >
  Is there a single approved term for each concept in this system, and
  is it used consistently? Are variant forms (synonyms, abbreviations,
  informal names) defined in relation to the canonical term?
evaluation_tools:
  - Terminology database or glossary
  - Vale (custom term rules)
  - Search-and-replace audit for variant forms
  - Information architecture audit
tags: [lexicon, layer:functional, layer:computational, writing-stage:prewriting, concern-type:architectural]
---

# Controlled Vocabulary

Controlled vocabulary is an authoritative set of terms for a documentation system or organization. It specifies, for each concept, the preferred canonical term and the relationship of all variants to that term: what is approved, what is deprecated, what is an alias, and what is out-of-scope.

In a system without controlled vocabulary, the same concept may be referred to by multiple names: "user," "customer," "end user," "subscriber," "account holder" — all meaning roughly the same thing, or meaning slightly different things without explicit distinction. Readers cannot tell if the variation is meaningful or arbitrary.

## Why It Matters at Scale

Controlled vocabulary matters most in systems where:
- Multiple writers contribute to a shared documentation set
- Documents are searched, retrieved, or processed by automated systems
- Terminology maps to technical specifications (product names, API terms, regulatory language) where precision is critical
- The documentation serves readers across different cultural or linguistic backgrounds

For search and retrieval, variant terminology fragments relevance: a reader searching for "account holder" may not find documents that use "subscriber" to mean the same thing. For RAG (retrieval-augmented generation) pipelines, terminology inconsistency degrades retrieval quality.

## Controlled Vocabulary vs. E-Prime

[[E-prime]] is a writing *philosophy* applied to individual word choices (eliminating "to be"). Controlled vocabulary is an *architectural* system concern — a governance structure for the terminology of a documentation system. They are at different layers, different scales, different responsible roles, and different address_when values. See [[category-boundaries]] for the distinction.

## Controlled Vocabulary vs. Terminology Consistency

[[Terminology-consistency]] is the implementation of controlled vocabulary within a single document: using the approved terms consistently, not varying them for stylistic variety. Controlled vocabulary is the system-level standard; terminology consistency is document-level compliance with that standard.

## Authoring Workflows

In practice, controlled vocabulary is maintained in:
- A terminology database (enterprise), glossary (smaller scale), or style guide appendix
- Term management tools (Acrolinx, TerminologyApp)
- Vale configuration with custom term rules
- A content management system with term enforcement plugins

## Engineering Design Parallel

Controlled vocabulary in engineering corresponds to the formal definition of terms in the *define* stage: a design brief establishes unambiguous terms for the problem components. In software, it corresponds to domain-driven design's "ubiquitous language" — the shared vocabulary of the development team and stakeholders, agreed upon before coding begins to prevent the divergence where engineers and clients mean different things by the same word.
