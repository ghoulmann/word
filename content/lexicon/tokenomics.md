---
also_known_as:
- token efficiency
- token optimization
- prompt efficiency
classification:
  address_when: drafting
  concern_type: computational
  determinism: risk-factor
  engineering_stage:
  - build
  - test
  - improve
  evaluator: automated
  impact:
  - rag-retrieval
  - rendering
  layer: computational
  responsible_role:
  - ai-tool
  - technical-qa
  risk_severity: functional
  scale:
  - word-level
  - document-level
  stage:
  - compositional
  - post-compositional
  writing_stage:
  - drafting
  - editing
description: The study and optimization of how text consumes tokens in AI language
  model contexts — balancing information density, cost, and model context window constraints.
diagnostic_question: 'Does this text, when processed by a language model, fit within
  the effective context window? Does it use tokens efficiently — conveying meaning
  without redundancy that inflates cost without adding value?

  '
evaluation_tools:
- tiktoken (OpenAI tokenizer)
- Model provider token counter
- Context window budget calculation
relationships:
  aspect_of: chunking
  increases_risk_of: rag-retrieval
  related_to:
  - chunking
  - controlled-vocabulary
  - lard-factor
  - plain-language
tags:
- lexicon
- layer:computational
- writing-stage:drafting
- concern-type:computational
title: Tokenomics
wordnet:
  definitions:
  - a word or phrase, especially considered in isolation
  related_forms:
  - symbol
  synonyms:
  - word
  - unit
  term: token
---

# Tokenomics

Tokenomics is the study of how text consumes and uses tokens in AI language model contexts. "Token" is the unit of text that language models process — roughly corresponding to a word or word-piece, though the exact mapping depends on the tokenizer. A sentence of 20 words might use 25–30 tokens depending on the model.

Tokenomics matters for:
- **Cost**: API usage is billed per token. High-volume applications make per-token efficiency economically significant.
- **Context window**: models have a finite context window (the amount of text they can process at once). Content that exceeds the window is truncated or requires chunking strategies.
- **Retrieval quality**: in RAG (retrieval-augmented generation) pipelines, the token distribution of documents affects what gets retrieved and how much context fits in a single query.

## Token Efficiency vs. Plain Language

[[Plain-language]] compression (reducing deadwood, eliminating [[lard-factor]]) also reduces token count. This is alignment between human-readability and machine-efficiency goals: lean prose serves both readers and language models.

However, token efficiency can diverge from human readability. Extremely compressed text ("noun phrases only; no articles") may reduce tokens while reducing human readability. Tokenomics must be balanced against the document's primary audience.

## Tokenomics and Writing Quality

Tokenomics is a relatively new concern — it emerged with the adoption of large language models in writing and documentation workflows. Traditional writing quality frameworks do not address it. The Writing Quality Ontology places it at Layer 2 (Computational) because it is a pipeline concern: it governs how text performs in automated processing, not how it serves a human reader directly.

That said, tokenomics failures have downstream effects on human-facing quality: a document that doesn't fit within a model's context window cannot be effectively summarized, searched, or processed, which means its information may not reach the humans who need it.

## Engineering Design Parallel

In the *build* and *test* stages of engineering design, tokenomics corresponds to performance optimization: how efficiently does the system use available resources? Overly verbose prompts or documentation that cannot be processed within model constraints are engineering quality failures analogous to a function that exceeds memory limits or a query that times out.