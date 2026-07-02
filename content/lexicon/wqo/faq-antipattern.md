---
title: FAQ Antipattern
description: The use of FAQ format as a substitute for well-structured base documentation; FAQs signal that primary documentation fails to answer reader questions at the natural point of need.
also_known_as: [FAQ accumulation, question-answer antipattern]
classification:
  layer: functional
  stage: pre-compositional
  scale: [document-level]
  concern_type: architectural
  evaluator: [human-information-architect, human-structural-editor]
  determinism: risk-factor
  writing_stage: [prewriting]
  address_when: prewriting
  impact: [reader-comprehension, seo-discoverability]
  risk_severity: credibility
  responsible_role: [information-architect, structural-editor, author]
relationships:
  subtype_of: topic-type
  related_to: [audience-awareness, rhetorical-arrangement, structural-completeness]
analogy:
  writing_concept: FAQ accumulating as remediation layer around primary documentation gaps
  engineering_equivalent: technical debt accumulation around a core design gap
  shared_property: remediation layer grows around a primary system that fails to handle a real use case; both become maintenance liabilities when the underlying gap is not fixed
  failure_mode: FAQ answer becomes stale when feature changes; support ticket accumulates in the same FAQ because the base docs still don't answer it
tags: [lexicon, taxonomy:wqo, layer:functional, concern-type:architectural]
---

# FAQ Antipattern

A FAQ is a list of questions with answers, organized around what users ask rather than what the subject logically requires. As an organizational structure, it has a specific legitimate use: collecting genuinely miscellaneous questions that don't fit elsewhere. As a documentation strategy, it is a failure signal.

When a product grows a large FAQ, it usually means that the base documentation does not answer reader questions at the point where readers need them. The FAQ accumulates as a remediation layer: someone reads the docs, doesn't find the answer, asks a question, and the question gets added to the FAQ. The FAQ is an audit log of the primary documentation's failures.

## Why FAQs become liabilities

FAQs are unstructured by design. Answers are separated from the conceptual context that would make them most useful. SEO is fragmented across dozens of question-answer pairs rather than concentrated in comprehensive topic pages. Maintenance is difficult: when the underlying feature changes, every relevant FAQ entry must be found and updated, with no structural signal to indicate which entries are affected.

The FAQ antipattern is particularly acute in technical documentation, where it accumulates alongside reference material, creating a two-source lookup problem: readers must check both the reference and the FAQ to be confident they have complete information.

## Resolution

The correct response to a growing FAQ is to audit which questions it answers and integrate those answers into the primary documentation at the natural location where a reader would look for them. FAQs that survive this process are genuinely miscellaneous and can be retained as a catch-all section.

**Engineering parallel:** The FAQ antipattern maps to *technical debt accumulation around a core design gap* — both are remediation layers that grow around a primary system that fails to handle a real use case; both become maintenance liabilities when the underlying gap is not fixed.
