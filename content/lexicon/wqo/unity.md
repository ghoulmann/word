---
title: Unity
description: The property of a text unit — paragraph, section, or document — in which every element serves a single controlling purpose and nothing irrelevant is included.
wordnet:
  term: unity
  definitions:
    - "an undivided or unbroken completeness or totality with nothing wanting"
    - "the quality of being united into one"
  synonyms:
    - oneness
    - wholeness
  related_forms:
    - unified
    - unify
classification:
  layer: structural
  stage: post-compositional
  scale: [paragraph-level, document-level]
  concern_type: logical
  evaluator: [human-structural-editor, human-peer-reviewer]
  determinism: risk-factor
  writing_stage: [revising, peer-review]
  address_when: revising
  engineering_stage: [define, communicate]
  impact: reader-comprehension
  risk_severity: functional
  responsible_role: [structural-editor, self-editor]
relationships:
  related_to: [coherence, cohesion, boundary-control]
  aspect_of: coherence
  prerequisite_for: mechanical-editing
diagnostic_question: >
  Can you state what this paragraph (or section) is about in a single
  sentence? Does every sentence in it contribute to that single purpose?
  If not, which sentences belong elsewhere?
evaluation_tools:
  - Topic sentence check: does every paragraph have a clear controlling claim?
  - Reverse outline: summarize each paragraph; identify those that contain more than one claim
tags: [lexicon, layer:structural, writing-stage:revising, concern-type:logical]
---

# Unity

Unity is the property of a text unit in which every element serves one and only one controlling purpose. A unified paragraph contains sentences that all support or develop a single claim. A unified section contains paragraphs that all contribute to a single section-level point. A unified document contains sections that all serve the document's stated purpose.

A paragraph that is *not* unified contains sentences that belong somewhere else: a second topic trying to start, a digression that was inserted without trimming, a conclusion that belongs in a different section.

## Unity vs. Coherence vs. Cohesion

These three concepts are closely related but distinct:

- **Unity** asks: is everything here *supposed to be* here? (Does every element belong to this unit's single purpose?)
- **[[Coherence]]** asks: does everything follow logically? (Does the argument advance without gaps or contradictions?)
- **[[Cohesion]]** asks: is everything visibly connected? (Are the surface-level linguistic connections in place?)

A paragraph can be unified (one topic) but incoherent (the sentences don't follow each other logically). A paragraph can be unified and coherent but low-cohesion (the logic holds but the transitions are absent). All three are needed for well-constructed prose, but they are diagnosed and fixed differently.

## Diagnosis

The most direct diagnostic: can you state the paragraph's point in one sentence? This is the topic sentence, stated or implicit. Every other sentence should either support, qualify, extend, or exemplify that claim.

If you cannot state the paragraph in one sentence, either:
1. The paragraph contains more than one topic (a unity failure — split it), or
2. The paragraph lacks a controlling claim (a coherence failure — find the claim).

## Boundary Control

[[Boundary-control]] is the practice that maintains unity: the discipline to include only what belongs in a given unit and exclude everything else. A writer with good boundary control maintains unit-level unity as they draft, and recognizes during revision when a sentence has drifted. Unity is the standard; boundary control is the practice that upholds it.

## Engineering Design Parallel

In engineering design documentation (communicate stage), a section on "system architecture" that also contains implementation details, test results, and maintenance procedures is a unity failure. Each section should serve its stated purpose. A document with poor unity forces readers to search for information that belongs to multiple topics scattered through a single section.
