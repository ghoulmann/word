---
title: Chunking
description: The structuring of content into discrete, self-contained units optimized for retrieval, navigation, and processing — both by human readers and automated systems.
wordnet:
  term: segmentation
  definitions:
    - "the act of dividing or partitioning"
    - "the division of speech or written language into segments"
  synonyms:
    - segmentation
    - division
    - partitioning
  related_forms:
    - chunk
    - segment
classification:
  layer: computational
  stage: [pre-compositional, compositional]
  scale: [paragraph-level, document-level, system-level]
  concern_type: [architectural, computational]
  evaluator: [automated, human-information-architect]
  determinism: risk-factor
  writing_stage: [prewriting, drafting, revising]
  address_when: prewriting
  engineering_stage: [define, build]
  impact: [reader-comprehension, rag-retrieval]
  risk_severity: functional
  responsible_role: [information-architect, ai-tool, technical-qa]
relationships:
  related_to: [tokenomics, boundary-control, topic-type, information-design]
  addresses: [rag-retrieval, cognitive-overload]
  prerequisite_for: tokenomics
diagnostic_question: >
  Can each section of this document stand alone as a retrievable unit?
  Does the content boundary align with the semantic boundary — does each
  chunk contain one coherent topic, neither splitting topics across chunks
  nor merging distinct topics into one?
evaluation_tools:
  - RAG chunk simulation (split document by heading level; check each chunk for completeness)
  - Information architecture review
  - Vector search test (retrieve a chunk; verify it answers a specific question without requiring other chunks)
tags: [lexicon, layer:computational, writing-stage:prewriting, concern-type:computational]
---

# Chunking

Chunking is the structuring of content into discrete, self-contained units — each unit coherent enough to stand alone as a retrievable piece of information. It serves both human readers (who scan and navigate rather than reading sequentially) and automated systems (which segment text by boundary markers for search indexing and retrieval).

## Human-Facing Chunking

For human readers, chunking reduces [[cognitive-overload]] by presenting information in manageable units. A long continuous document is cognitively more demanding than the same information organized into clearly bounded sections with descriptive headings. Research on reading behavior consistently shows that readers of online and technical content scan before they read; chunking provides the structure that scanning relies on.

[[Topic-type]] classification (Diataxis) is one chunking strategy: each document is one type (tutorial, how-to, reference, explanation) rather than a mixture. This ensures each chunk answers a specific kind of question.

[[Boundary-control]] is the practice that maintains chunking quality in prose structure — the discipline of keeping each unit within its defined scope.

## Automated-System Chunking

For RAG (retrieval-augmented generation) pipelines, chunking determines what can be retrieved in response to a query. If semantic units are split across chunk boundaries — if a question and its answer appear in different chunks — retrieval quality degrades. If multiple distinct topics are merged into a single chunk, precision degrades (the retrieved chunk contains more information than the query needs, diluting relevance).

Optimal chunking for automated retrieval aligns structural boundaries (headings, section breaks) with semantic boundaries (where one topic ends and another begins). This is a content authoring concern, not just an infrastructure concern.

## Chunking and Tokenomics

[[Tokenomics]] concerns how text uses tokens within a model's context window. Chunking determines the size and semantic completeness of the units that enter that context window. A chunk that is too large may exceed the context limit or dilute attention; a chunk that is too small may lack the context needed to answer a query.

## Engineering Design Parallel

In the *define* and *build* stages of engineering design, chunking corresponds to modular decomposition: each module has a well-defined interface, a single responsibility, and can be understood without requiring context from every other module. A documentation architecture with poor chunking is equivalent to a codebase with poor modularization — everything is entangled, nothing is independently testable.
