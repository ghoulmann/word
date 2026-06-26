---
title: Readability
description: The ease with which a reader can process and understand a text, considered as an aggregate property of vocabulary, sentence structure, and information density.
also_known_as: [legibility, reading ease, text accessibility]
classification:
  concern_type: outcome
  risk_severity: functional
relationships:
  impeded_by:
    - wqo/nominalization
    - wqo/cognitive-overload
    - wqo/lard-factor
  measured_by:
    - wqo/flesch-kincaid-score
    - wqo/gunning-fog-index
    - wqo/readability-metrics
  supported_by:
    - wqo/plain-language
    - wqo/sentence-length
tags: [lexicon, taxonomy:wqo]
---

# Readability

Readability is the aggregate ease of reading a text — not merely that words are legible on the page, but that the reader can process sentence structure, decode vocabulary, and hold enough context to understand each new clause as it arrives. It is an outcome, not a technique: readability is achieved through discipline in vocabulary choice, sentence length, syntactic complexity, and information density.

[[nominalization]] is one of readability's primary threats: converting verbs to nouns inflates sentence length, increases grammatical complexity, and obscures the logical relationships that make prose followable.

[[readability-metrics]] (Flesch-Kincaid, Gunning Fog, SMOG, etc.) operationalize readability as a score, making it measurable within an editorial workflow. These scores are useful heuristics, not verdicts — a text can score well and still be hard to follow if its argument is incoherent, or score poorly and still be appropriate for its expert audience.

[[plain-language]] is the prescriptive framework built on readability as a design constraint: write so the target reader understands on the first reading.
