---
title: Orthography
description: The conventional spelling, capitalization, and writing system conventions of a language — the rule-governed representation of words in written form.
also_known_as:
  - spelling
  - spelling conventions
wordnet:
  term: orthography
  definitions:
    - "a method of representing the sounds of a language by written or printed symbols"
    - "the study of correct spelling according to established usage"
  synonyms:
    - spelling
    - speling
  related_forms:
    - orthographic
    - spell
    - spelling
classification:
  layer: mechanical
  stage: post-compositional
  scale: word-level
  concern_type: grammatical
  evaluator: automated
  determinism: rule-violation
  writing_stage: [drafting, editing, publishing]
  address_when: editing
  engineering_stage: [communicate]
  impact: author-credibility
  risk_severity: credibility
  responsible_role: copy-editor
relationships:
  related_to: [punctuation, grammar-syntax, house-style, terminology-consistency]
  controlled_by: house-style
diagnostic_question: >
  Are all words spelled correctly according to the applicable dictionary
  and house style? Is capitalization consistent and rule-compliant?
evaluation_tools:
  - Spell checker (all word processors)
  - Dictionary (Merriam-Webster for American English; Oxford for British English)
  - Vale (custom spelling and capitalization rules)
tags: [lexicon, layer:mechanical, writing-stage:editing, concern-type:grammatical]
---

# Orthography

Orthography covers the conventional written form of words: spelling, capitalization, and writing system conventions. It is the most consistently automatable of all Mechanical (Layer 4) concerns — spell checkers are reliable for standard spelling errors, though they miss homophones and neologisms.

## Components

**Spelling**: the conventional representation of words in letters. Most spelling errors are caught by automated tools. Homophones ("their/there/they're," "affect/effect") are not caught by basic spell checkers but are caught by grammar-aware tools.

**Capitalization**: standard rules (proper nouns, sentence beginnings, titles) plus house style choices (job titles: "Director" or "director"? Product names: "App" or "app"? "Internet" or "internet"?). Capitalization is both rule-governed and house-style-governed.

**Variant spelling**: American/British variants (color/colour, realize/realise, behavior/behaviour). House style determines which variant applies; automated tools can be configured accordingly.

**Technical and proper names**: product names, brand names, API names, organization names — these often have idiosyncratic capitalization or spelling that overrides standard rules ("iPhone," "macOS," "JavaScript"). Controlled vocabulary and terminology consistency complement orthographic accuracy for these cases.

## Orthography and Credibility

Spelling errors in formal contexts — academic writing, professional communications, published content — affect [[author-credibility]] at a `credibility` severity level. Readers infer carelessness from spelling errors regardless of the quality of the underlying thinking. This is asymmetric: correct spelling is invisible; errors are highly visible.

In casual or conversational contexts (internal messaging, informal notes), orthographic errors drop to `cosmetic` severity.

## When to Address

Spell-checking during drafting interrupts composing for a concern that will be caught efficiently in a single pass later. Address orthography during editing. Running spell-check on a document that may still be substantially revised is efficient — unlike structural revision, spell-check is fast and can be re-run after each revision without significant cost.
