---
title: Topic Type
description: "A classification of what a unit of documentation is functionally designed to do — following the Diataxis framework's four types: tutorial, how-to guide, reference, and explanation."
also_known_as:
  - Diataxis
  - documentation type
  - content type
wordnet:
  term: documentation
  definitions:
    - "confirmation that some fact or statement is true through the use of documentary evidence"
    - "program listings or technical manuals describing the operation and use of programs"
  synonyms:
    - documentation
  related_forms:
    - document
    - documented
classification:
  layer: functional
  stage: pre-compositional
  scale: document-level
  concern_type: architectural
  evaluator: [human-information-architect, human-structural-editor]
  determinism: risk-factor
  writing_stage: [prewriting, drafting]
  address_when: prewriting
  engineering_stage: [define, communicate]
  impact: [reader-comprehension, reader-trust]
  risk_severity: functional
  responsible_role: [information-architect, author]
  audience_sensitivity: [domain-novice]
relationships:
  controlled_by: audience-awareness
  related_to: [genre, hierarchy-of-purpose, boundary-control, rhetorical-arrangement]
  operationalized_as: boundary-control
diagnostic_question: >
  What is the reader supposed to be able to do, know, understand, or find
  after engaging with this content? Does the content's form serve that goal
  consistently and without mixing types?
evaluation_tools:
  - Diataxis documentation (diataxis.fr)
  - Content type audit: identify which sentences serve each function
analogy:
  writing_concept: topic-type
  engineering_equivalent: document-type-matching-use-case
  shared_property: form-matches-reader-task
  failure_mode: content-mismatched-to-use
tags: [lexicon, layer:functional, writing-stage:prewriting, concern-type:architectural]
---

# Topic Type

Topic type is the functional classification of what a unit of documentation is designed to accomplish. The Diataxis framework, developed by Daniele Procida, defines four distinct types of technical content that serve fundamentally different reader needs.

## The Four Types

**Tutorial**: learning-oriented. The reader is a beginner; the goal is to start them on a journey. The tutorial does not need to be comprehensive — it needs to be successful. The reader should reach a specific outcome, feel capable, and want to continue. Focus: experience, not information.

**How-to guide**: task-oriented. The reader has a specific goal and needs instructions for achieving it. They already know enough to know what they want to do; they need the steps. Focus: procedure, not explanation.

**Reference**: information-oriented. The reader needs to look something up. The reference entry exists to be consulted, not read sequentially. It is accurate, complete within its scope, and densely structured. Focus: information, not guidance.

**Explanation**: understanding-oriented. The reader wants to understand why something works the way it does, what the context is, what the alternatives are. Explanation exists to build mental models. Focus: understanding, not doing.

## Why Mixing Types Is a Failure

Each type has a different implied arrangement, different vocabulary register, different success criterion, and different user intention. Mixing types in a single document violates reader expectations:

- A tutorial that stops to explain the theory frustrates a beginner trying to achieve a concrete outcome.
- A reference entry that teaches the reader what to do is a how-to guide without the structure of one.
- A how-to guide that includes conceptual explanations sends the reader into a detour when they need steps.

Topic type is a [[boundary-control]] concern at document scale: once you have identified the type, boundary control means keeping the content within that type.

## Diataxis and Genre

Diataxis provides a genre taxonomy for technical documentation. As a [[genre]] specification, it defines both the form and the purpose of each type. Choosing the wrong type is a [[genre]] violation: the reader's expectations for what kind of document this is are not met.

**Engineering parallel:** Topic type maps to *document type matching use case* — a design rationale, an assembly procedure, and a parts list answer different questions; mismatching document type to reader task fails equally in writing and in engineering documentation.