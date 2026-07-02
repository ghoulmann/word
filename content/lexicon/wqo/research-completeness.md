---
title: Research Completeness
description: The sufficiency of information gathered before composing — no stubs, no unresolved questions, no claims that cannot yet be substantiated — ensuring drafting is not interrupted by missing material.
also_known_as: [information sufficiency, pre-draft research, content readiness]
classification:
  concern_type: technical
  layer: functional
  writing_stage: [prewriting]
relationships:
  prerequisite_for: source-integrity
  related_to: [temporal-accuracy, hallucination-risk, citation-completeness]
tags: [lexicon, taxonomy:wqo]
---

# Research Completeness

Research completeness is the property of a drafting context in which the author has gathered sufficient information to write without interruption. A draft begun with incomplete research produces documents with stubs ("TBD"), hedged claims ("approximately," "should be"), and passages that require verification after the fact — all of which may or may not be resolved before publication.

The cost of incomplete research compounds during drafting. An author who stops to look up a fact mid-sentence breaks writing flow. An author who drafts around an unknown detail produces prose that must be revised when the detail is filled in. An author who publishes without resolving a TBD produces a document with a visible gap or, worse, an unverified claim that is wrong.

## What research completeness requires

- All factual claims the document will make have been gathered and verified
- All sources for attributed claims have been located, read, and noted
- Technical details (API parameters, version numbers, system behaviors) have been confirmed against authoritative sources
- The scope of the document has been defined — what is in scope, what is explicitly out of scope

## Relationship to hallucination risk

[[hallucination-risk]] is the AI-specific failure mode that research completeness mitigates: AI-generated content can produce confident text about gaps in the model's knowledge rather than flagging them as unknown. Research completeness, as a prewriting practice, establishes what is known and unknown before composing — making it possible to identify gaps in AI-generated output rather than assuming the output is complete.
