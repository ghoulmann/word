---
title: Lard Factor
description: The ratio of unnecessary words to total words in a sentence or passage — a measure of prose compression and efficiency.
also_known_as:
  - deadwood ratio
  - word economy
wordnet:
  term: verbosity
  definitions:
    - "the quality of using more words than necessary"
  synonyms:
    - wordiness
    - prolixity
  related_forms:
    - verbose
    - prolix
classification:
  layer: mechanical
  stage: post-compositional
  scale: sentence-level
  concern_type: stylistic
  evaluator: [automated, human-line-editor]
  determinism: risk-factor
  writing_stage: [revising, editing]
  address_when: editing
  engineering_stage: [improve, communicate]
  impact: [reader-comprehension, cognitive-overload]
  risk_severity: functional
  responsible_role: [line-editor, self-editor]
  audience_sensitivity: [second-language-learner, cognitive-disability, domain-novice]
relationships:
  aspect_of: sentence-efficiency
  operationalized_as: paramedic-method
  increases_risk_of: cognitive-overload
  related_to: [weak-words, nominalization, passive-voice]
diagnostic_question: >
  If you removed this word or phrase, would the sentence lose any meaning?
  If not, it is deadwood.
evaluation_tools:
  - Hemingway Editor (word count reduction suggestions)
  - Paramedic Method (manual)
  - Count words before and after revision as a compression ratio
tags: [lexicon, layer:mechanical, writing-stage:editing, concern-type:stylistic]
---

# Lard Factor

Richard Lanham introduced the lard factor as a simple diagnostic: after applying the [[paramedic-method]] to revise a sentence, count the percentage of words removed. A 50% reduction is not unusual. The lard factor is the inverse of compression: a high lard factor means the sentence was half deadwood.

The lard factor is a measure of **sentence efficiency** — how much meaning is delivered per word. It does not penalize long sentences that contain proportionally dense information. It identifies sentences where the same meaning can be expressed in fewer words.

## Deadwood Categories

**Throat-clearing phrases**: "It is important to note that..." / "As has been mentioned above..." / "In today's modern society..." — these add no content.

**Nominalizations inflating word count**: "make a determination" (decide), "come to a conclusion" (conclude), "conduct an investigation" (investigate) — each nominalization typically costs 2–3 extra words.

**Redundant modifiers**: "end result," "advance planning," "past history," "completely unanimous" — the modifier restates what the noun already means.

**Expletive constructions**: "There are many factors that contribute to..." → "Many factors contribute to..."

**Passive voice overhead**: "The system was implemented by the team" uses more words than "The team implemented the system."

## Lard Factor vs. Weak Words

Lard factor measures *volume* of unnecessary words. [[Weak words]] names a specific category of low-content vocabulary — vague verbs and modifiers ("utilize," "very," "quite") — that deflate meaning without necessarily inflating word count. A sentence can have a low lard factor but still be diluted by weak words, or a high lard factor from structural deadwood without weak vocabulary.

## When to Address It

Lard factor is addressed during editing — after structural revision is complete. Compressing prose that may be restructured is premature work. Once the argument is stable, compression passes improve reading speed and reduce cognitive load.

For readers with cognitive disabilities or second-language learners, sentence-level compression directly reduces the working memory required per sentence, making high-lard-factor prose a meaningful barrier to access.
