---
title: Punctuation
description: The system of marks that indicate grammatical relationships, sentence boundaries, and prosodic cues in written language — governed by rule in standard usage but subject to house style choices for contested conventions.
wordnet:
  term: punctuation
  definitions:
    - "the marks used to clarify meaning of written material by grouping words grammatically into sentences and clauses and phrases"
  synonyms:
    - pointing
  related_forms:
    - punctuate
    - punctuated
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
  impact: [reader-comprehension, author-credibility]
  risk_severity: credibility
  responsible_role: copy-editor
relationships:
  related_to: [grammar-syntax, orthography, house-style]
  controlled_by: house-style
diagnostic_question: >
  Does the punctuation correctly indicate the grammatical relationships
  between clauses, and does it follow the applicable style guide for
  contested choices (Oxford comma, em-dash vs. en-dash, etc.)?
evaluation_tools:
  - Grammar/spell checker
  - Copy-editor review
  - Style guide (for contested conventions)
tags: [lexicon, layer:mechanical, writing-stage:editing, concern-type:grammatical]
---

# Punctuation

Punctuation governs the written signals that indicate sentence boundaries, clause relationships, lists, quotations, and other structural features of text. Most punctuation rules are clear and consistent across standard usage; some are contested and governed by house style.

## Rule-Governed vs. Convention-Governed

**Rule-governed** (binary right/wrong in standard usage):
- End punctuation: periods at sentence end, question marks for interrogatives, exclamation marks for exclamatory sentences
- Apostrophes: possessives and contractions have standard forms
- Quotation marks: direct speech, titles, and scare quotes follow standard rules
- Comma rules for non-restrictive clauses, compound sentences, and introductory phrases

**Convention-governed** (house style determines):
- **Oxford/serial comma**: comma before the final item in a list ("red, white, and blue" vs. "red, white and blue") — AP omits it; Chicago and APA require it
- **Em-dash vs. en-dash**: for parenthetical insertions — Chicago uses em-dash without spaces; AP uses spaced en-dash
- **Ellipsis**: three dots or spaced periods; with or without space before
- **Hyphen vs. en-dash for ranges**: "1990–2000" (en-dash) or "1990-2000" (hyphen)

## Punctuation and Meaning

Punctuation is not merely cosmetic. Wrong punctuation can change meaning:
- "Let's eat, Grandma." vs. "Let's eat Grandma." (the famous comma example)
- "The suspect, who was armed, fled" (non-restrictive: all suspects fled; this one was armed) vs. "The suspect who was armed fled" (restrictive: only the armed suspect fled)
- "I never said she stole my money" — stress any word and the meaning shifts; punctuation can signal the stress pattern in writing

These meaning-bearing punctuation choices are higher-severity than stylistic convention choices.

## Automated Detection

Punctuation errors are among the most consistently caught by grammar checkers. Apostrophe errors, comma splices, and missing end punctuation are reliably detected. Contested convention choices (Oxford comma) are configurable in most tools, typically via style guide settings.
