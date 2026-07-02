---
title: E-Prime
description: A version of English that eliminates all forms of the verb "to be," forcing writers to use specific, active, and actor-explicit constructions.
also_known_as:
  - E′
  - English Prime
wordnet:
  term: copula
  definitions:
    - "an equating verb (especially the verb 'to be') that links subject with predicate nominative"
  synonyms:
    - linking verb
  related_forms:
    - copulative
classification:
  layer: editorial
  stage: compositional
  scale: word-level
  concern_type: stylistic
  evaluator: [automated, human-line-editor]
  determinism: philosophy
  writing_stage: [drafting, revising, editing]
  address_when: drafting
  engineering_stage: [communicate]
  impact: [reader-comprehension, author-credibility]
  risk_severity: cosmetic
  responsible_role: [author, self-editor]
relationships:
  controlled_by: plain-language
  addresses: [nominalization, passive-voice, weak-words]
  commonly_confused_with: controlled-vocabulary
  related_to: [paramedic-method, active-voice]
diagnostic_question: >
  Does this sentence contain any form of "to be" (is, are, was, were, be,
  been, being)? If so, can you rewrite it using a more specific verb that
  shows the actor and action directly?
evaluation_tools:
  - E-Prime checker scripts (automated search for "to be" forms)
  - Manual search: find all forms of "is," "are," "was," "were," "be," "been," "being"
analogy:
  writing_concept: e-prime
  engineering_equivalent: behavioral-specification
  shared_property: claims-describe-action-not-static-state
  failure_mode: state-claims-are-unverifiable-and-untestable
tags: [lexicon, layer:editorial, writing-stage:drafting, concern-type:stylistic]
---

# E-Prime

E-Prime (E′) is a version of English that removes all forms of the verb "to be": is, are, was, were, be, been, being, and contractions (it's, there's, they're, etc.). Developed by D. David Bourland Jr. in 1965 as an extension of Alfred Korzybski's general semantics, E-Prime forces writers to replace "is/are" with more specific, actor-explicit verbs.

## Why Remove "To Be"?

Forms of "to be" often function as shortcuts that hide agency, assert identity without evidence, and resist challenge:

- **Passive identity**: "The report is complete." → Who completed it? When?
- **Unattributed assertion**: "This approach is wrong." → Wrong by what standard? For whom?
- **Existence claims as facts**: "There are many reasons..." → Name them and own them.
- **Equating abstractions**: "Success is hard work." → A contested philosophical claim dressed as a definition.

Eliminating "to be" forces a grammatical rewrite that typically surfaces the actor, specifies the action, and makes implicit claims explicit.

## E-Prime as Philosophy, Not Rule

E-Prime is classified as `philosophy` (D6 determinism) and `editorial` (Layer 5). It is not a rule violation to use "to be" — prose written with "to be" is not wrong. E-Prime is a constraint that some writers adopt as a discipline to strengthen their habits around passive constructions and vague assertions.

It is not appropriate for all writing contexts. Technical documentation with identity statements ("this component *is* a resistor"), definitions, and formal descriptions often requires "to be" legitimately. Applying E-Prime dogmatically to technical prose can produce awkward circumlocutions.

## Relationship to Other Concepts

E-Prime partially controls [[nominalization]] (nominalizations often appear with "to be": "the implementation *is* complete" → "we implemented and finished"), and [[passive-voice]] (passive constructions require "to be" as an auxiliary: "was implemented"). It does not replace the [[paramedic-method]] — the paramedic method is a diagnostic procedure; E-Prime is a writing constraint.

**Engineering parallel:** E-Prime maps to *behavioral specification* — both replace 'X is Y' state claims with 'X does Z under condition C' behavioral claims; both fail when existence statements substitute for operational definitions that could actually be tested.