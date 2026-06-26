---
title: Flesch-Kincaid Score
description: A family of readability formulas that estimate reading ease and US grade-level reading difficulty from average sentence length and average syllables per word.
also_known_as: [Flesch Reading Ease, Flesch-Kincaid Grade Level, FK score, FKGL]
classification:
  concern_type: metric
  layer: mechanical
  determinism: deterministic
relationships:
  measures:
    - wqo/readability
    - wqo/readability-metrics
  related_to:
    - wqo/sentence-length
    - wqo/gunning-fog-index
tags: [lexicon, taxonomy:wqo]
---

# Flesch-Kincaid Score

The Flesch-Kincaid formulas are the most widely deployed readability metrics in English-language editorial tools. Two variants exist:

**Flesch Reading Ease** (0–100 scale): Higher scores indicate easier reading. A score of 60–70 is considered plain English suitable for general audiences; below 30 is very difficult academic or technical prose.

**Flesch-Kincaid Grade Level**: Estimates the US school grade level required to comprehend the text. A grade level of 8 means the text is accessible to an eighth-grader.

Both formulas use only two variables: average sentence length (in words) and average word length (in syllables). This makes them fast to compute and easy to game — a document written in short sentences full of polysyllabic technical terms will score well on sentence length but poorly on word length.

## Limitations

FK scores are heuristics, not verdicts. They do not measure:
- Logical coherence or argument structure
- Vocabulary familiarity for a specific audience (a specialist may find high-syllable technical terms easier than low-syllable general terms)
- Information density or redundancy
- Document organization

[[gunning-fog-index]] is an alternative metric with similar methodology. [[readability-metrics]] covers the full family of computational readability proxies.

## Editorial use

FK scores are most useful as a first-pass flag during copyediting: a grade level of 16+ in documentation intended for general users warrants sentence-level revision. They are not a substitute for human editorial judgment or user testing.
