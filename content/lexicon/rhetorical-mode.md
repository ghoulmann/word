---
title: Rhetorical Mode
description: The primary structural pattern governing a passage or document — narration, description, exposition, or argumentation — determining the logic by which content is organized and developed.
also_known_as:
  - modes of discourse
  - rhetorical patterns
  - modes of writing
wordnet:
  term: rhetoric
  definitions:
    - "using language effectively to please or persuade"
    - "the art of using language in speaking or writing"
  synonyms:
    - oratory
    - elocution
  related_forms:
    - rhetorical
    - rhetorician
classification:
  layer: structural
  stage: [pre-compositional, compositional]
  scale: [paragraph-level, document-level]
  concern_type: rhetorical
  evaluator: [human-rhetorician, human-structural-editor]
  determinism: risk-factor
  writing_stage: [prewriting, drafting]
  address_when: prewriting
  engineering_stage: [define, communicate]
  impact: reader-comprehension
  risk_severity: functional
  responsible_role: [author, structural-editor]
relationships:
  related_to: [genre, rhetorical-arrangement, hierarchy-of-purpose]
  aspect_of: genre
  controlled_by: hierarchy-of-purpose
diagnostic_question: >
  What primary mode structures this passage — are you narrating (sequence
  of events), describing (features of a subject), explaining (how or why),
  or arguing (claim supported by evidence)? Is the mode appropriate for
  the purpose?
evaluation_tools:
  - Mode identification (read the passage: what is its primary purpose?)
  - Structural outline: what organizational logic underlies each section?
tags: [lexicon, layer:structural, writing-stage:prewriting, concern-type:rhetorical]
---

# Rhetorical Mode

Rhetorical mode is the primary structural pattern organizing a passage. The classical four modes of discourse are:

**Narration**: sequential account of events or processes. Organized by time. Purpose: to recount. Used in: case studies, event reports, historical accounts, tutorials (which narrate a learning journey).

**Description**: rendering of the features, qualities, or attributes of a subject. Organized by spatial or logical properties. Purpose: to render. Used in: technical specifications, product descriptions, character studies.

**Exposition**: explanation of how something works or why something is the case. Organized by logical relationships (cause-effect, problem-solution, classification, comparison). Purpose: to explain. Used in: reference documentation, explanations (Diataxis), educational content.

**Argumentation**: claim supported by evidence and reasoning, aimed at changing the reader's belief or action. Organized by rhetorical structure (claim, evidence, warrant, rebuttal). Purpose: to persuade. Used in: proposals, recommendations, op-eds, academic arguments.

## Why Mode Matters

Each mode implies a different organizational logic, different transitions, and different success criteria. Mixing modes without signaling the shift disorients the reader. A document that begins as exposition (explaining a system) and shifts into argumentation (advocating for a particular design) without signaling the shift is confusing: the reader doesn't know whether to follow the explanation or evaluate the argument.

Mode mismatches are also triage failures: an explanatory passage evaluated for argumentative quality will fail unfairly (exposition doesn't make claims that can be rebutted), while an argumentative passage that isn't evaluated for logical validity is missing its primary quality standard.

## Mode and Genre

[[Genre]] and rhetorical mode are related but distinct. Genre specifies the form-convention contract (what kind of document is this). Mode specifies the organizing logic within that document. A research paper (genre) contains both exposition (literature review) and argumentation (discussion and conclusions). A tutorial (genre) uses narration. A reference (genre) uses description or exposition.

## Engineering Design Parallel

In engineering design documentation, mode governs what each section does: the problem definition section is exposition or argumentation (why this problem matters); the design description section is exposition (how the solution works); the rationale section is argumentation (why this solution was chosen). Mixing modes without structure — writing a design rationale as exposition rather than argumentation — produces a section that describes a solution without ever arguing for it.
