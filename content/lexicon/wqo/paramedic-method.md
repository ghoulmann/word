---
title: Paramedic Method
description: Richard Lanham's diagnostic procedure for identifying and restructuring weak prose — locate the action, name the actor, build the sentence from there.
wordnet:
  term: revision
  definitions:
    - "the act of rewriting or altering a text"
    - "a second or subsequent printing of a book with corrections"
    - "careful reconsideration of something and a change where necessary"
  synonyms:
    - editing
    - rewriting
    - reediting
  related_forms:
    - revise
    - revisal
classification:
  layer: mechanical
  stage: post-compositional
  scale: sentence-level
  concern_type: stylistic
  evaluator: [human-line-editor, human-copy-editor]
  determinism: rule-violation
  writing_stage: [revising, editing]
  address_when: editing
  engineering_stage: [improve]
  impact: reader-comprehension
  risk_severity: cosmetic
  responsible_role: [line-editor, self-editor]
relationships:
  addresses: [nominalization, passive-voice, lard-factor, weak-words]
  operationalized_as: lard-factor
  produces: active-voice-prose
  controlled_by: plain-language
diagnostic_question: >
  What is the action of this sentence? Who or what performs that action?
  Does the sentence open with that actor performing that action?
tags: [lexicon, layer:mechanical, writing-stage:editing, concern-type:stylistic]
---

# Paramedic Method

Richard Lanham developed the paramedic method in *Revising Prose* as a systematic procedure for diagnosing and treating weak, bureaucratic, or academic prose. The method is procedural — a step-by-step diagnosis that works on any sentence, regardless of the writer's intuition about what's wrong.

## The Procedure

1. **Circle the prepositions.** A forest of prepositional phrases often signals a nominalized or overextended sentence.
2. **Box the "is" forms.** Any form of "to be" (is, are, was, were, has been) as a main verb signals a passive or weakly constructed sentence.
3. **Ask: where is the action?** Find the real verb — often buried inside a nominalization (the *implementation* of..., the *analysis* of...).
4. **Make that action the main verb.** Convert the nominalization back to a verb.
5. **Name the actor.** Who or what performs that action? If the sentence doesn't have one, give it one.
6. **Start the sentence with the actor-action.** Put the subject (actor) first, then the verb (action), then the object.
7. **Measure the lard factor.** Count words before and after. A 30–60% reduction is common.

## Example

*Before*: "The implementation of the new system by the IT department was completed in a timely manner."

*Step 1*: Circle prepositions — "of," "by," "in"
*Step 3*: The action is "implementation" — buried in a noun.
*Step 4*: Restore as verb: "implemented"
*Step 5*: Actor: "IT department"
*Step 6*: "The IT department implemented the new system."
*Step 7*: 15 words → 7 words. Lard factor: 53%.

## What the Method Treats

The paramedic method directly addresses:
- [[nominalization]] — step 3–4
- [[passive-voice]] — step 2 and step 5–6
- [[lard-factor]] — step 7 (measuring the result)
- [[weak-words]] — step 3 reveals weak verbs once the nominal is removed

It does not address structural concerns. A sentence that passes the paramedic test can still be incoherent as part of a structurally broken passage. The method is sentence-level.

## Relationship to Plain Language

The paramedic method is one operationalization of [[plain-language]] philosophy at the sentence level: prefer active voice, prefer specific verbs, prefer shorter constructions. It provides a concrete, repeatable procedure where plain language remains abstract philosophy.
