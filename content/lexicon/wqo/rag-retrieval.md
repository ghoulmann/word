---
title: RAG Retrieval
description: The process by which a retrieval-augmented generation system fetches document chunks as context for a language model — a pipeline whose quality is determined upstream by how the source documents were written and structured.
also_known_as: [retrieval-augmented generation, RAG, semantic retrieval, vector retrieval]
classification:
  concern_type: outcome
  layer: computational
  risk_severity: functional
relationships:
  degraded_by:
    - chunking
    - heading-clarity
    - semantic-density
    - temporal-accuracy
    - tokenomics
  supported_by:
    - controlled-vocabulary
tags: [lexicon, taxonomy:wqo]
---

# RAG Retrieval

Retrieval-augmented generation (RAG) is an architecture in which a language model is given retrieved document chunks as context before generating a response. The quality of every retrieval step is a direct function of the quality of the source documents: how they are chunked, how densely meaningful their text is, how consistently they use terminology, and whether their information is current.

RAG retrieval is the downstream consumer of decisions made during authoring. A document that was never intended for machine consumption may still end up in a RAG pipeline — and its structural weaknesses will manifest as retrieval failures invisible to human readers.

## How WQO concerns affect retrieval

**[[chunking]]** is the most direct upstream determinant of retrieval quality. A document chunked at arbitrary token boundaries, rather than at semantic units (sections, procedures, definitions), will produce chunks that are either too narrow (missing context) or too broad (diluting relevance signals). Poor heading structure makes automatic chunking harder.

**[[heading-clarity]]** matters because many RAG pipelines use headings as chunk boundaries or metadata signals. A vague heading provides a weak relevance signal; a heading that does not accurately describe its section produces misleading retrieval results.

**[[semantic-density]]** affects embedding quality. Sparse, padded prose embeds close to generic language rather than to the specific concepts it nominally covers. High semantic density — more meaningful signal per token — produces embeddings that cluster reliably with semantically related queries.

**[[temporal-accuracy]]** is a retrieval trust problem: a RAG system cannot know that retrieved content is stale. If the source document contains outdated procedures or superseded values, the language model will present them as current.

**[[tokenomics]]** affects whether a document's key content falls within the context window. Verbose preambles, redundant summaries, and low-density passages consume token budget without improving the model's understanding.

## The authoring implication

Documents intended to serve RAG pipelines require the same structural discipline as documents written for human readers — plus additional constraints around self-containment (each section should be interpretable without its neighbors) and controlled vocabulary (consistent terminology improves embedding cosine similarity).
