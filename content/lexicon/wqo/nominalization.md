---
title: Nominalization
description: The grammatical conversion of a verb or adjective into a noun, typically obscuring agency and inflating sentence weight.
also_known_as:
  - zombie nouns
  - noun clusters
  - nominalisation
wordnet:
  term: nominalization
  definitions:
    - "the grammatical process of deriving a noun from a verb or adjective"
    - "a noun phrase that has the semantic content of a clause"
  synonyms:
    - nominalisation
  related_forms:
    - nominalize
    - nominal
classification:
  layer: [mechanical, structural]
  stage: post-compositional
  scale: [word-level, sentence-level]
  concern_type: grammatical
  evaluator: [automated, human-line-editor, human-copy-editor]
  determinism: risk-factor
  writing_stage: [drafting, revising, editing]
  address_when: editing
  engineering_stage: [test, improve]
  impact: [cognitive-overload, reader-comprehension]
  risk_severity: functional
  responsible_role: [line-editor, copy-editor]
  audience_sensitivity: [second-language-learner, cognitive-disability]
cascade_threshold: >
  An isolated instance is a word-level mechanical fix. A systemic pattern
  of nominalization across a passage — every verb converted to a noun,
  every agent buried — is a structural coherence failure: the actor-action
  relationship is lost throughout. At that threshold, structural diagnosis
  precedes mechanical correction.
relationships:
  subtype_of: word-level-error
  increases_risk_of: [coherence-failure, cognitive-overload]
  controlled_by: [paramedic-method, e-prime]
  commonly_confused_with: passive-voice
  impediment_to: readability
diagnostic_question: >
  Is the main action buried inside a noun ("the implementation of the system")
  rather than expressed as a verb ("implementing the system" or "we implemented")?
evaluation_tools:
  - Hemingway Editor
  - Paramedic Method (manual count)
  - Vale (custom rule)
analogy:
  writing_concept: nominalization
  engineering_equivalent: over-abstracted-interface-contract
  shared_property: action-buried-in-noun-form
  failure_mode: traceability-obscured
tags: [lexicon, layer:mechanical, layer:structural, writing-stage:editing, concern-type:grammatical]
---

# Nominalization

Nominalization is the conversion of a verb or adjective into a noun. "Implement" becomes "the implementation of." "Analyze" becomes "an analysis of." "Decide" becomes "a decision regarding." Helen Sword named the resulting constructions "zombie nouns" — they drain the life from prose by removing the actor and the action from the sentence.

## Why It Matters

A nominalized sentence hides its verb. When the verb is hidden, the actor disappears too. "The implementation of the new system resulted in the elimination of redundant processes" — who implemented? Who eliminated? The sentence has no human agent; everything is done by abstract nouns to each other.

This matters at the word level (each instance adds weight) and at the structural level (a systemic pattern obscures the argument chain throughout a document). Readers must work harder to reconstruct who is doing what to what. That extra work is [[cognitive-overload]] — a mediating impact that leads to [[coherence]] failure and reduced [[readability-metrics]].

## Mechanism

Nominalizations are formed through several grammatical processes:
- **Derivational suffixes**: -tion, -ment, -ance, -ence, -ity, -ness (implementation, assessment, relevance, clarity)
- **Gerunds used as subjects**: "The writing of reports consumes..." (vs. "Writing reports consumes...")
- **Abstract nouns replacing verb phrases**: "make a decision" (vs. "decide"), "conduct an investigation" (vs. "investigate")

## Diagnosis

Apply the [[paramedic-method]]: locate the action of the sentence. If the action is buried in a noun with -tion, -ment, -ance, or similar suffix, restore it as a verb and identify its subject.

The diagnostic question: *is the main action buried inside a noun rather than expressed as a verb?*

## Cascade Threshold

An isolated nominalization is a mechanical fix. A systemic pattern — every action nominalized across a long passage — is a structural problem: the argument chain is obscured throughout, not just in one sentence. At that threshold, the concern escalates to [[coherence]] diagnosis before word-level correction is meaningful.

**Engineering parallel:** Nominalization maps to *over-abstracted interface contracts* — both bury concrete actions inside noun-form abstractions, making it impossible to trace who does what or what causes what.