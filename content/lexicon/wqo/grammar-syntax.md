---
title: Grammar and Syntax
description: The rule-governed system of structures that determine how words combine into sentences — and the concern for correctness in applying those rules.
also_known_as:
  - grammar
  - syntax
  - grammatical correctness
wordnet:
  term: grammar
  definitions:
    - "the branch of linguistics that deals with syntax and morphology"
    - "a system of rules defining the structure of a language"
  synonyms:
    - syntax
  related_forms:
    - grammatical
    - grammatically
    - syntactic
classification:
  layer: mechanical
  stage: post-compositional
  scale: sentence-level
  concern_type: grammatical
  evaluator: [automated, human-copy-editor]
  determinism: rule-violation
  writing_stage: [drafting, editing]
  address_when: editing
  engineering_stage: [communicate]
  impact: [author-credibility, reader-comprehension]
  risk_severity: credibility
  responsible_role: copy-editor
relationships:
  produces: word-level-error
  related_to: [punctuation, orthography, passive-voice, nominalization]
  controlled_by: house-style
diagnostic_question: >
  Does this sentence contain a grammatical error — subject-verb disagreement,
  dangling modifier, comma splice, sentence fragment, or other structure
  that violates standard usage?
evaluation_tools:
  - Grammarly
  - LanguageTool
  - Microsoft Editor
  - Vale (with grammar rules)
  - Human copy-editor review
tags: [lexicon, layer:mechanical, writing-stage:editing, concern-type:grammatical]
---

# Grammar and Syntax

Grammar and syntax are the rule-governed structures of language: how words are ordered, how they agree with each other, how clauses combine, how sentence types work. Grammatical correctness is a Mechanical (Layer 4) concern — failures are identifiable without contextual judgment.

## Common Grammatical Errors

**Subject-verb disagreement**: "The list of requirements *are* ready" (should be: "is ready" — the subject is "list," singular).

**Pronoun-antecedent disagreement**: "Each writer should review *their* work" — acceptable in contemporary usage for singular "they"; older style guides required "his or her."

**Dangling modifier**: "Walking to school, the rain started" — the subject of "walking" is not the rain. Should be: "Walking to school, I was caught in the rain."

**Misplaced modifier**: "She only eats vegetables on Tuesdays" vs. "She eats only vegetables on Tuesdays" — placement changes meaning.

**Comma splice**: joining two independent clauses with only a comma: "I finished the draft, it needs revision" (needs a period, semicolon, or conjunction).

**Run-on sentence**: two or more independent clauses joined without punctuation or conjunction.

**Fragment**: a dependent clause or phrase presented as a sentence: "Because the deadline passed." (Needs an independent clause.)

**Parallelism failure**: "She likes writing, to edit, and reading" — items in a list must share grammatical form: "writing, editing, and reading."

## Grammar as Rule Violation

Grammar errors are `rule-violation` determinism (D6): they have clear right/wrong answers given the applicable language standard (typically standard written English for professional contexts, though conventions vary). This distinguishes them from risk factors like passive voice (which is sometimes appropriate) and philosophies like plain language (which requires judgment).

Grammar and syntax are addressed during editing — after structural revision is complete. Fixing grammatical errors during drafting interrupts composing; fixing them before revision risks editing text that will be restructured.

## Automated Detection

Grammar errors are among the most tractable for automated detection. Grammarly, LanguageTool, and Microsoft Editor all detect common grammar errors with reasonable accuracy, though false positives are common (legitimate constructions flagged as errors) and complex errors (especially ambiguous reference) require human judgment.

## Grammar and Credibility

Grammar errors affect `author-credibility` at a `credibility` severity level in formal writing contexts: research papers, grant proposals, legal documents, business communications. In casual contexts (internal memos, conversational content), the severity drops to `functional` or `cosmetic`. The audience-conditional D13 sensitivity is relevant: formal grammar failures by non-native speakers carry a different social meaning than by native speakers, and readers should interpret them accordingly.
