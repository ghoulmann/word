---
title: Embedding Quality
description: The degree to which a text chunk produces a vector embedding that accurately represents its semantic content — determined by controlled vocabulary, consistent terminology, semantic density, and minimal noise.
also_known_as: [vector quality, embedding signal, semantic vector fidelity]
classification:
  layer: computational
  stage: post-compositional
  scale: [paragraph-level, document-level]
  concern_type: computational
  evaluator: [automated, ai-tool]
  determinism: risk-factor
  writing_stage: [revising]
  address_when: revising
  impact: [rag-retrieval]
  risk_severity: functional
  responsible_role: [ai-tool, author, technical-qa]
relationships:
  related_to: [semantic-density, controlled-vocabulary, tokenomics, chunking]
  aspect_of: rag-retrieval
tags: [lexicon, taxonomy:wqo, layer:computational, concern-type:computational]
---

# Embedding Quality

When text is embedded for use in a vector database or semantic search system, the resulting vector represents the semantic content of the text as a point in high-dimensional space. Embedding quality describes how accurately that vector captures the actual meaning of the text — whether a query about "rate limiting" returns chunks about rate limiting rather than chunks that happen to use the word "limit" in a different context.

Embedding quality is not directly observable during authoring, but it is determined by writing properties that are observable: [[semantic-density]], [[controlled-vocabulary]], [[terminology-consistency]], and [[chunking]] structure.

## What degrades embedding quality

**Boilerplate and noise**: Repeated legal disclaimers, repeated navigation text included in chunks, generic phrases like "This section describes..." dilute the distinctive semantic signal.

**Terminology inconsistency**: Using multiple terms for the same concept within a chunk confuses the embedding model about what the chunk is primarily about.

**Mixed topics in a single chunk**: A chunk that covers both authentication and rate limiting produces a vector that represents neither topic accurately. [[chunking]] directly determines whether chunks are semantically focused.

**Absent or vague headings**: Embedding models weight headings as strong semantic signals. Vague headings like "Overview" or "Notes" contribute noise rather than signal.

## Measurement

Embedding quality can be evaluated by running retrieval tests against known queries: if relevant chunks are not returned in the top results for queries that should retrieve them, embedding quality is low. This is an empirical test, not a linguistic one.
