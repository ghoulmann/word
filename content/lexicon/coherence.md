---
title: Coherence
description: The logical continuity of a text — whether each claim follows from the last and the whole argument holds together as a unified progression.
wordnet:
  term: coherence
  definitions:
    - "logical and orderly and consistent relation of parts"
    - "the quality of being logically integrated, consistent, and intelligible"
  synonyms:
    - cohesiveness
    - consistency
  related_forms:
    - coherent
    - cohere
classification:
  layer: structural
  stage: post-compositional
  scale: [paragraph-level, document-level]
  concern_type: logical
  evaluator: [human-structural-editor, human-peer-reviewer, human-rhetorician]
  determinism: risk-factor
  writing_stage: [revising, peer-review]
  address_when: revising
  engineering_stage: [define, choose, communicate]
  impact: reader-comprehension
  risk_severity: functional
  responsible_role: [structural-editor, self-editor, peer-reviewer]
relationships:
  commonly_confused_with: cohesion
  prerequisite_for: mechanical-editing
  impediment_to: reader-comprehension
  related_to: [unity, rhetorical-arrangement, informal-fallacy]
diagnostic_question: >
  Does each sentence or claim follow from the previous one, and does the
  whole text advance a single clear argument or purpose without unexplained
  gaps or contradictions?
evaluation_tools:
  - Reverse outline (manual: summarize each paragraph in one sentence, then check if they form a logical sequence)
  - Peer review
tags: [lexicon, layer:structural, writing-stage:revising, concern-type:logical]
---

# Coherence

Coherence is the property of a text by which its parts form a unified, logical progression. A coherent text leads the reader from premise to conclusion, from question to answer, from context to implication, without unexplained jumps, contradictions, or departures.

Coherence is a structural concern — it operates at paragraph and document scale. A sentence can be grammatically correct and semantically meaningful but contribute to incoherence if it does not advance or connect to the surrounding argument.

## Coherence vs. Cohesion

Coherence and cohesion are often used interchangeably but name different phenomena. [[Cohesion]] is *surface-level*: the linguistic devices that signal connection — pronouns, transitional phrases, repetition, parallel structure. You can have surface cohesion with logical incoherence (every sentence begins with "Furthermore," but the claims don't follow each other). You can have logical coherence with sparse cohesion markers (the logic is clear but the surface transitions are minimal).

Cohesion is observable with automated tools; coherence requires human judgment about whether the argument advances.

## How Coherence Fails

**Non-sequitur**: a claim or section that does not logically follow from what precedes it, often because a connecting assumption was left implicit.

**Contradiction**: claims that undermine each other without acknowledgment.

**Scope creep**: the text drifts to address something adjacent to its controlling purpose, breaking the forward movement of the argument.

**Buried topic**: the paragraph's controlling claim is not stated until the end — or not stated at all — leaving the reader to reconstruct the logic rather than follow it.

**Cascade from mechanical failure**: systemic [[nominalization]] or relentless [[passive-voice]] can produce apparent incoherence — the reader cannot follow who is doing what, so the argument chain collapses. The mechanical pattern is the cause; the structural incoherence is the symptom.

## Diagnosis

The most reliable diagnostic for coherence is the **reverse outline**: after drafting, summarize each paragraph in a single sentence capturing its claim. Then read those summary sentences in sequence. If they form a logical progression, the text is coherent. If they jump, repeat, contradict, or fail to follow each other, the structure is incoherent.

## Why It Is a Prerequisite

Coherence is `prerequisite_for` mechanical editing. Editing prose at the mechanical level before the argument is coherent is editing sentences that may be cut, restructured, or reordered. See [[triage-sequencing]].

## Engineering Design Parallel

In engineering design, coherence corresponds to the logical consistency of a design rationale: does each decision follow from the previous one, and does the whole design argument hold together? An incoherent design document is one where the chosen solution doesn't demonstrably address the problem stated in the define stage — the argument chain is broken.
