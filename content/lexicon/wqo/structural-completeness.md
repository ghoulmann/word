---
title: Structural Completeness
description: The degree to which a document contains all sections and elements required by its type — no missing prerequisites in a tutorial, no undocumented parameters in a reference entry.
also_known_as: [document completeness, content coverage, required-section coverage]
classification:
  layer: structural
  stage: compositional
  scale: [document-level]
  concern_type: architectural
  evaluator: [human-structural-editor, automated]
  determinism: rule-violation
  writing_stage: [revising, peer-review]
  address_when: revising
  impact: [reader-comprehension, reader-trust]
  risk_severity: functional
  responsible_role: [structural-editor, author]
relationships:
  related_to: [topic-type, rhetorical-arrangement, heading-clarity]
  impedes: reader-comprehension
analogy:
  writing_concept: document missing required sections mandated by its topic type
  engineering_equivalent: incomplete interface implementation
  shared_property: declared contract (topic type / interface) specifies required elements; missing elements cause consumer failures
  failure_mode: tutorial missing prerequisites; API not implementing required endpoint; both fail at the consumer's first attempt
tags: [lexicon, taxonomy:wqo, layer:structural, concern-type:architectural]
---

# Structural Completeness

Structural completeness means a document contains all the sections, elements, and information units that its type requires to be functional. A tutorial without a prerequisites section, a function reference missing a return-type description, a configuration reference without a defaults table — each is structurally incomplete in a way that a reader cannot compensate for at read time.

Incompleteness is different from inadequacy. An inadequate explanation can be expanded; a missing section cannot be improved — it must be added. Readers encountering a structural gap typically do not recognize it as a gap: they assume the missing information is somewhere else, search for it, and only after failing to find it conclude that the document is incomplete.

## What determines required structure

[[topic-type]] determines what sections are obligatory: tutorials require prerequisites, learning objectives, and numbered steps; reference entries require description, parameters, return value, and examples. Violating these type requirements produces structural incompleteness regardless of prose quality.

[[rhetorical-arrangement]] determines the order and relationships between sections. A complete document may still fail if its sections appear in an order that makes some sections unintelligible without others that appear later.

## Automated detection

Template conformance checks can detect structurally incomplete documents if the required sections for each topic type are codified as templates with required headings. This makes structural completeness a lintable property — given a declared topic type and a heading inventory, automated tools can flag missing required sections.
