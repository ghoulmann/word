---
title: Translation Pipeline Quality
description: The correctness of the localization production process — string extraction, machine translation review, locale fallback handling, and locale-specific formatting for dates, currency, and numbers.
also_known_as: [localization pipeline, l10n pipeline quality, multilingual pipeline]
classification:
  layer: functional
  stage: post-compositional
  scale: [document-level, system-level]
  concern_type: technical
  evaluator: [automated, human-technical-qa]
  determinism: risk-factor
  writing_stage: [publishing]
  address_when: publishing
  impact: [reader-comprehension, reader-trust, accessibility-cognitive]
  risk_severity: functional
  responsible_role: [publisher, technical-qa, author]
relationships:
  related_to: [localization, rendering-fidelity, version-integrity]
tags: [lexicon, taxonomy:wqo, layer:functional, concern-type:technical]
---

# Translation Pipeline Quality

Translation pipeline quality covers the production end of [[localization]] — not the linguistic quality of translation, which is a subject-matter judgment, but the correctness of the pipeline that extracts, translates, and publishes localized content.

The authoring concern (are the source strings written to be translatable?) and the production concern (did the strings arrive at the translator intact, get translated before publication, and render correctly in all locales?) are distinct problems with distinct failure modes.

## Pipeline failure modes

**String extraction failures**: Source strings extracted with format placeholders corrupted, HTML tags included in translatable strings, or segmentation splitting sentences across multiple strings in ways that prevent grammatically correct translation.

**MT-without-review publishing**: Machine translation output published without human post-editing produces text that is often fluent enough to be read but technically inaccurate or culturally inappropriate.

**Silent locale fallback**: When translated content is missing, serving English content to non-English locales without any indication erodes trust — readers do not know whether they are reading correct content in the wrong language.

**Locale-specific formatting**: Date formats, currency symbols, number separators, and list separators must be applied at publish time for the target locale, not inherited from the source locale.

**RTL rendering**: Right-to-left language localization (Arabic, Hebrew, Persian) requires CSS mirroring of layout direction. RTL failures typically appear after localization updates when new CSS is added without RTL equivalents.
