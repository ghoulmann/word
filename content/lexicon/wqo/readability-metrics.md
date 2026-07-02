---
title: Readability Metrics
description: Computational formulas that estimate reading difficulty using measurable surface features — sentence length, syllable count, word frequency — as proxies for comprehension difficulty.
also_known_as:
  - readability scores
  - readability formulas
  - reading level scores
wordnet:
  term: readability
  definitions:
    - "the quality of written language that makes it easy to read and understand"
  synonyms:
    - legibility
  related_forms:
    - readable
    - legible
classification:
  layer: mechanical
  stage: post-compositional
  scale: [sentence-level, document-level]
  concern_type: computational
  evaluator: automated
  determinism: risk-factor
  writing_stage: [revising, editing]
  address_when: editing
  engineering_stage: [test, improve]
  impact: [reader-comprehension, accessibility-cognitive]
  risk_severity: functional
  responsible_role: [copy-editor, line-editor, technical-qa]
  audience_sensitivity: [second-language-learner, cognitive-disability, domain-novice]
relationships:
  measured_by: [flesch-kincaid-score, gunning-fog-index]
  operationalized_as: plain-language
  aspect_of: plain-language
  related_to: [lard-factor, audience-awareness]
  commonly_confused_with: plain-language
diagnostic_question: >
  What is the Flesch-Kincaid Grade Level of this document, and does that
  level match the reading proficiency of the intended audience?
evaluation_tools:
  - Flesch-Kincaid Grade Level formula
  - Gunning Fog Index
  - Hemingway Editor (grade level display)
  - Microsoft Word readability statistics
  - Readable.io
analogy:
  writing_concept: readability-metrics
  engineering_equivalent: static-analysis-metrics
  shared_property: proxy-measurement-of-non-directly-observable-quality
  failure_mode: metric-optimization-without-underlying-quality-improvement
tags: [lexicon, layer:mechanical, writing-stage:editing, concern-type:computational]
---

# Readability Metrics

Readability metrics are computational formulas that estimate reading difficulty from measurable surface properties of text. The most widely used are the Flesch-Kincaid Grade Level and the Gunning Fog Index. Both derive their scores from combinations of average sentence length and average word length (in syllables or characters).

They are **proxies**, not measurements: they measure features that *correlate* with reading difficulty, not reading difficulty itself. A document can score at a grade-5 reading level and still be incomprehensible due to structural incoherence, jargon, or assumed context. A document can score at grade-12 and be entirely accessible to a reader with domain expertise.

## Common Formulas

**Flesch-Kincaid Grade Level**: derived from average sentence length (ASL) and average syllables per word (ASW). Higher grade level = harder to read.

**Flesch Reading Ease**: the inverse — higher score = easier to read. Scores range roughly 0–100; 60–70 is considered standard/accessible.

**Gunning Fog Index**: similar to Flesch-Kincaid; uses percentage of "complex words" (3+ syllables) instead of syllable count.

**Automated Readability Index (ARI)**: uses character count instead of syllable count; faster to compute.

## What Metrics Do and Don't Capture

Readability metrics detect:
- Very long sentences (a reliable predictor of difficulty)
- High syllable-count vocabulary
- Overall passage complexity correlated with sentence and word length

They do not detect:
- Jargon (domain-specific terms may have short syllable counts but be opaque to novices)
- Structural incoherence (the argument may be logically broken regardless of sentence length)
- Audience-topic mismatch
- Cultural or linguistic barriers for second-language readers

## Readability Metrics vs. Plain Language

[[Plain-language]] is a philosophy and a multi-layer practice. Readability metrics are one computational proxy for one dimension of plain language. Hitting a target reading level does not mean the document applies plain language principles. It is a necessary but not sufficient condition.

## Audience Sensitivity

Target reading level is audience-dependent. For general public communications, US government guidelines recommend a grade-8 reading level. For safety-critical communications reaching second-language learners or readers with cognitive disabilities, lower targets (grade 5–6) are appropriate. For specialist technical documentation with expert readers, grade-level targets are less relevant than jargon management and structural clarity.

**Engineering parallel:** Readability metrics map to *static analysis metrics* — both are proxy measurements for a quality attribute that cannot be observed directly; both can be optimized without actually improving the underlying quality they were designed to indicate.