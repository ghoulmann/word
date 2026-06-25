---
title: Localization
description: The adaptation of content for a specific cultural, linguistic, regional, or regulatory context — going beyond translation to adjust idiom, examples, conventions, and assumptions.
also_known_as:
  - L10n
  - cultural adaptation
  - internationalization (i18n)
wordnet:
  term: localization
  definitions:
    - "the act of making something local or restricting it to a particular place"
    - "the process of adapting a product to a specific locale or market"
  synonyms:
    - localisation
  related_forms:
    - localize
    - local
classification:
  layer: editorial
  stage: post-compositional
  scale: document-level
  concern_type: stylistic
  evaluator: [human-line-editor, human-rhetorician]
  determinism: risk-factor
  writing_stage: [editing, publishing]
  address_when: editing
  engineering_stage: [communicate]
  impact: [reader-comprehension, inclusivity, reader-trust]
  risk_severity: functional
  responsible_role: [publisher, line-editor]
  audience_sensitivity: [second-language-learner, cross-cultural]
relationships:
  controlled_by: audience-awareness
  related_to: [tone-voice-cadence, terminology-consistency, house-style, genre]
  addresses: inclusivity
diagnostic_question: >
  Does this text make assumptions about cultural context, regional conventions,
  or shared knowledge that may not hold for readers outside the original
  locale? Are idioms, examples, humor, and implicit values accessible to
  the target audience?
evaluation_tools:
  - Cultural review by a representative reader from the target locale
  - Idiom and metaphor audit
  - Locale-specific review (date formats, measurement units, currency, address formats)
tags: [lexicon, layer:editorial, writing-stage:editing, concern-type:stylistic]
---

# Localization

Localization is the adaptation of content for a specific cultural, linguistic, or regional audience. It goes beyond translation (converting words) to conversion of cultural references, assumptions, examples, humor, idioms, conventions, and implicit shared values.

The shorthand L10n (localization, with 10 letters between l and n) and the related i18n (internationalization) are common in software and technical documentation.

## What Localization Involves

**Language**: word choice, grammar patterns, and register conventions vary across regional variants of the same language (American English vs. British English vs. Australian English; Brazilian Portuguese vs. European Portuguese).

**Cultural references**: an example that assumes familiarity with American college football, British parliamentary procedure, or Japanese gift-giving customs will fail for readers outside those contexts.

**Idioms and metaphor**: "ballpark figure" and "under the weather" are opaque to readers who don't know the idiom. Literal translations often produce confusion or absurdity.

**Conventions**: date formats (MM/DD/YYYY vs. DD/MM/YYYY vs. YYYY-MM-DD), number formatting (period vs. comma as decimal separator), measurement units (metric vs. imperial), currency, and address formats all vary by locale.

**Legal and regulatory**: some content must comply with locale-specific regulations (GDPR in the EU, privacy laws in California, medical device regulations in different jurisdictions). Localization for these contexts goes beyond language adaptation to legal adaptation.

**Tone and directness**: the appropriate level of directness, formality, and deference varies significantly across cultures. A tone calibrated for US professional contexts may read as rude in Japanese contexts or overly deferential in Dutch ones.

## Localization vs. Translation

Translation converts language. Localization converts culture. A text can be grammatically translated perfectly and still fail its reader because the examples, humor, implicit assumptions, and frame of reference are foreign to them.

## Localization and Plain Language

[[Plain-language]] principles — short sentences, common vocabulary, active voice — are baseline good practices that also improve localizability: idiom-free prose is easier to translate and easier to read for second-language readers without translation.

## Engineering Design Parallel

In the *communicate* stage of engineering design, localization affects all documentation and interface content that reaches users. For globally deployed products, localization is part of the definition of quality: a product manual that serves only the original locale's readers has failed all other readers, regardless of technical content quality.
