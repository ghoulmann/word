---
title: Boundary Control
description: The discipline of including only what belongs in a given unit of text — paragraph, section, or document — and excluding everything that belongs elsewhere.
wordnet:
  term: delimitation
  definitions:
    - "the act of fixing or marking boundaries or limits"
  synonyms:
    - demarcation
    - limitation
  related_forms:
    - delimit
    - bound
classification:
  layer: structural
  stage: [compositional, post-compositional]
  scale: [paragraph-level, document-level]
  concern_type: [logical, architectural]
  evaluator: [human-structural-editor, human-information-architect]
  determinism: risk-factor
  writing_stage: [drafting, revising]
  address_when: revising
  engineering_stage: [define, build, communicate]
  impact: reader-comprehension
  risk_severity: functional
  responsible_role: [structural-editor, information-architect, author]
relationships:
  operationalized_as: unity
  related_to: [unity, coherence, topic-type, rhetorical-arrangement]
  part_of: information-design
diagnostic_question: >
  Does each section or paragraph contain only what its controlling purpose
  requires? Is there anything in this unit that belongs in a different unit?
  Is there anything that belongs here that is missing?
evaluation_tools:
  - Document outline review
  - Section-level reverse outline
  - Information architecture audit
analogy:
  writing_concept: boundary-control
  engineering_equivalent: interface-definition-and-scope
  shared_property: explicit-boundary-prevents-cross-contamination
  failure_mode: scope-creep-entangles-independent-units
tags: [lexicon, layer:structural, writing-stage:revising, concern-type:architectural]
---

# Boundary Control

Boundary control is the practice of maintaining clear limits around units of text: deciding what belongs in this paragraph, this section, this document, and enforcing those limits through revision.

A writer with strong boundary control makes explicit decisions about containment. Information that belongs to Section 3 does not drift into Section 2. A paragraph that develops one claim does not become a two-topic paragraph because a tangentially related idea surfaced during drafting. A document that is scoped to one purpose does not expand to absorb related material that belongs in a different document.

## Why It Is Structural

Boundary control is not a mechanical concern — it is an architectural one. It operates at the structural layer because it requires judgment about *what the unit is for* before any decision about what to include can be made. A sentence can be grammatically perfect and still be in the wrong place.

Poor boundary control produces:
- Paragraphs that cover two topics (split them)
- Sections where the reader cannot find information because it is in the wrong section
- Documents that are ostensibly about one thing but contain material from several adjacent topics
- Documents where related information is scattered rather than grouped

## Boundary Control and Unity

[[Unity]] is the standard: every element of a unit serves a single controlling purpose. Boundary control is the practice that achieves and maintains unity. You apply boundary control when you decide a sentence belongs in the next paragraph, when you move a section to a different position, when you extract a tangent into a separate document.

## Boundary Control at Document Scale

At document scale, boundary control is the work of an information architect: deciding what belongs in this document vs. a linked document, what is in scope vs. out of scope, and how to partition a large system of content so each component has clear ownership.

Diataxis (the topic-type framework) is one approach to boundary control at document scale: its four topic types (tutorial, how-to guide, reference, explanation) define distinct kinds of purposes, and boundary control means keeping each document type within its kind.

**Engineering parallel:** Boundary control maps to *interface definition and scope management* — both make explicit what belongs inside a unit and what lies outside it; both fail when concerns bleed across the boundary and independent units become entangled.