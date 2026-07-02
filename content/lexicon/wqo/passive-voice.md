---
title: Passive Voice
description: A grammatical construction in which the subject receives the action rather than performing it, optionally omitting the agent entirely.
also_known_as:
  - passive construction
  - passive sentence
wordnet:
  term: passive voice
  definitions:
    - "a grammatical voice in which the subject is the recipient of the action expressed by the verb"
  synonyms:
    - passive
    - passive construction
  related_forms:
    - passivize
    - active voice
classification:
  layer: mechanical
  stage: post-compositional
  scale: sentence-level
  concern_type: grammatical
  evaluator: [automated, human-line-editor, human-copy-editor]
  determinism: risk-factor
  writing_stage: [drafting, revising, editing]
  address_when: editing
  engineering_stage: [build, test, improve, communicate]
  impact: [reader-comprehension, cognitive-overload]
  risk_severity: functional
  responsible_role: [line-editor, self-editor]
  audience_sensitivity: [second-language-learner, cognitive-disability]
relationships:
  controlled_by: paramedic-method
  increases_risk_of: [coherence-failure, cognitive-overload]
  commonly_confused_with: nominalization
  related_to: [lard-factor, weak-words]
diagnostic_question: >
  Is the actor (who does the action) absent or demoted to a prepositional
  phrase ("by X") when naming the actor would clarify responsibility or sequence?
evaluation_tools:
  - Hemingway Editor
  - Microsoft Editor
  - Vale (custom rule)
  - Paramedic Method (manual)
analogy:
  writing_concept: passive-voice
  engineering_equivalent: unattributed-requirement
  shared_property: agent-absent-from-statement
  failure_mode: ownership-unrecoverable
tags: [lexicon, layer:mechanical, writing-stage:editing, concern-type:grammatical]
---

# Passive Voice

In an active sentence, the subject performs the action: "The team implemented the system." In a passive sentence, the subject receives the action: "The system was implemented." The agent — the team — may be named ("was implemented by the team") or dropped entirely.

## When Passive Voice Is a Risk Factor

Passive voice is not a rule violation. It is a risk factor — a construction that *increases the probability* of comprehension failure, especially in certain contexts:

- **Instructional prose**: "The valve should be closed before the pipe is disconnected" — by whom? Active voice makes the actor explicit.
- **Technical reporting**: "The error was introduced" — passive obscures whether the error was human, mechanical, or environmental.
- **Long passages**: passive voice used consistently across a passage buries the argument chain, making it difficult for readers to track cause and responsibility.

In scientific writing, passive voice is conventional ("samples were collected") because the methodology, not the researcher, is the focus. In this context, passive voice serves the genre, not fights it. This is why it is a risk factor, not a rule violation: context determines whether the construction is appropriate.

## Mechanism

Passive construction moves the logical object of an action into subject position and optionally omits the logical subject:

- Active: **Subject** [verb] **object** → "We collected the samples."
- Passive: **Object** [be + past participle] (by **subject**?) → "The samples were collected (by us)."

The agent-drop — omitting the "by" phrase — is the primary coherence risk. Without a named actor, readers cannot assign responsibility, sequence causation, or follow an argument chain.

## Relationship to Nominalization

Passive voice and [[nominalization]] are commonly confused because both patterns depersonalize prose and bury agency. They are different mechanisms:

- Passive voice removes the subject from the verb; the main action is still a verb.
- Nominalization removes the verb from the action entirely; the action becomes a noun.

A sentence can contain both: "The implementation of the system was completed by the team." The fix for each is different: restoring active voice (for passive), restoring the verb (for nominalization).

**Engineering parallel:** Passive voice maps to *unattributed requirements* — both suppress the agent responsible for an action, making ownership unrecoverable and accountability impossible to assign.