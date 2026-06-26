---
title: Gunning Fog Index
description: A readability formula that estimates the years of formal education required to understand a text on first reading, based on sentence length and the proportion of complex (three-or-more-syllable) words.
also_known_as: [fog index, Gunning fog, FOG score]
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
    - wqo/flesch-kincaid-score
tags: [lexicon, taxonomy:wqo]
---

# Gunning Fog Index

The Gunning Fog Index was developed by Robert Gunning in 1952 to measure the obscurity ("fog") of business writing. The formula estimates the years of formal education a reader needs to understand a text on first reading.

**Formula**: `0.4 × (average sentence length + percentage of complex words)`  
*Complex words*: words with three or more syllables, excluding proper nouns, compound words, and verb forms with -ed or -es suffixes.

A fog index of 12 corresponds to a US high school senior; most major newspapers target 8–10; technical manuals for general audiences should aim for 12 or below.

## Difference from Flesch-Kincaid

The Gunning Fog formula uses the *proportion of complex (polysyllabic) words* rather than average syllables per word. This makes it more sensitive to technical vocabulary density — a document with many technical terms will score higher (harder) than one with the same average sentence length but simpler vocabulary.

Like all formula-based metrics, it does not measure argument coherence, organization, or conceptual difficulty. See [[readability-metrics]] for a full comparative overview and [[flesch-kincaid-score]] for the most commonly used alternative.
