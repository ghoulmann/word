---
title: Accessibility Presentation
description: The dimension of document accessibility concerned with visual, structural, and navigational presentation — ensuring content is perceivable and operable by readers using assistive technologies or non-standard viewing contexts.
also_known_as: [document accessibility, presentation accessibility, WCAG compliance]
classification:
  concern_type: outcome
  layer: structural
  impact: [reader-comprehension]
  audience_sensitivity: accessibility-needs
relationships:
  addressed_by:
    - wqo/information-design
  related_to:
    - wqo/localization
    - wqo/plain-language
tags: [lexicon, taxonomy:wqo]
---

# Accessibility Presentation

Accessibility presentation covers the structural and visual dimensions of document accessibility: heading hierarchy for screen reader navigation, alt text for images, sufficient color contrast, table markup, and reading order. It is distinct from the linguistic accessibility addressed by [[plain-language]] and [[readability-metrics]], though both are required for a document that is accessible to all readers.

[[information-design]] is the WQO concern most directly responsible for accessibility presentation: the spatial and structural organization of content determines whether assistive technologies can traverse it meaningfully. A document with logical heading hierarchy, properly marked lists, and described visual content is accessible by design; one that relies on visual formatting alone (bold for "headings," whitespace for "lists") fails screen readers regardless of how clearly it is written.

WCAG 2.x and WCAG 3 provide the normative framework for accessibility presentation in digital documents; PDF/UA and EPUB Accessibility provide equivalent standards for packaged formats.
