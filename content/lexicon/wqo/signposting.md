---
title: Signposting
description: Explicit meta-commentary that orients the reader about the document's structure, progress, and argument — distinct from cohesion devices, which operate at the sentence level.
also_known_as:
  - structural signposting
  - metatext
  - metadiscourse
wordnet:
  term: signpost
  definitions:
    - "a statement that guides the reader through the structure or argument of a text"
    - "explicit commentary about the organization or purpose of what follows"
  synonyms:
    - metadiscourse
    - orientation cue
  related_forms:
    - signpost
    - signposted
classification:
  layer: [structural, mechanical]
  stage: post-compositional
  scale: [paragraph-level, document-level]
  concern_type: rhetorical
  evaluator: [human-structural-editor, human-line-editor, human-peer-reviewer]
  determinism: risk-factor
  writing_stage: [revising, peer-review, editing]
  address_when: revising
  engineering_stage: [communicate, test]
  impact: [reader-comprehension, cognitive-overload]
  risk_severity: functional
  responsible_role: [structural-editor, self-editor, line-editor]
  audience_sensitivity: [domain-novice, second-language-learner]
relationships:
  aspect_of: coherence
  commonly_confused_with: cohesion
  mitigated_by: [heading-clarity, rhetorical-arrangement]
  related_to: [cohesion, unity, rhetorical-arrangement]
  controlled_by: rhetorical-arrangement
diagnostic_question: >
  Does the reader always know where they are in the document, where they
  are going, and why this section is here — without having to infer it
  from context?
evaluation_tools:
  - Reader protocol (ask a reader to narrate their sense of location at each section boundary)
  - Peer review (note any "why are we here?" moments)
  - Reverse outline check (can a reader reconstruct the structure from the text alone?)
analogy:
  writing_concept: signposting
  engineering_equivalent: interface-documentation
  shared_property: system-level-navigation-enables-orientation
  failure_mode: user-cannot-orient-without-exhaustive-exploration
tags: [lexicon, layer:structural, writing-stage:revising, concern-type:rhetorical]
---

# Signposting

Signposting is the practice of providing explicit structural orientation within a text — telling the reader where they are, where the argument is going, and why a section exists. Unlike [[cohesion]], which operates at the sentence level through connectives and pronouns, signposting operates at the paragraph and document level through meta-commentary about the text itself.

Examples of signposting: "This section establishes the theoretical framework. The following section applies it to three cases." Or: "Having shown that X causes Y, we now examine when X is present but Y does not follow." Or simply a well-placed preview sentence at the start of a long section. The reader of a well-signposted document always knows their location in the argument.

## Why It Matters

Readers, particularly domain novices and second-language learners, invest cognitive effort in tracking their position in an argument. Without signposting, this tracking work is hidden and continuous — the reader must infer structure from content, which consumes working memory that should be spent on substance. A well-signposted document offloads that tracking effort from the reader to the writer, where it belongs.

Signposting is also how a document makes its argument legible from the outside. A document that lacks signposting may be internally coherent (each sentence follows logically from the last) while being externally opaque (a reader who has lost their place cannot easily re-enter).

## Signposting vs. Cohesion

This distinction is easy to miss. [[Cohesion]] is surface-level: "however," "therefore," "as a result," pronouns, parallel structure. These devices connect sentences to each other. Signposting is structural-level: "This section argues that...", "As established in the previous section...", "The following three examples each illustrate...". These devices connect sections to the document's architecture.

A document can have strong cohesion (every sentence is connected) but weak signposting (the reader doesn't know where the argument is going). Conversely, a document can have adequate signposting but weak cohesion at the sentence level.

## How It Fails

**Absent orientation**: sections begin without explaining their purpose. The reader must read the whole section to know what it was for — discovery learning in a document that shouldn't require it.

**Retrospective signposting only**: "As shown above..." is a backward-looking signal. Without corresponding forward signals ("The next section will show..."), the reader only knows where they've been, not where they're going.

**Over-signposting**: bureaucratic or academic prose sometimes over-announces itself ("This paper will first discuss... then it will examine... finally it will conclude..."). Signposting should be proportional to the document's complexity and length.

## Diagnosis

Ask a reader to narrate their sense of location at each section boundary. "Where do you think you are in the argument? What do you expect comes next?" A document with adequate signposting produces consistent, accurate answers. A document without it produces uncertainty or incorrect predictions.

## Cascade Threshold

Absent signposting in a short document is a minor friction. In a long or complex document — a specification, a technical report, a multi-section guide — absent signposting collapses the reader's ability to navigate the argument. At that scale, the document's [[coherence]] depends structurally on signposting: the reader cannot evaluate whether the argument holds if they cannot track its stages.

**Engineering parallel:** Signposting maps to *interface documentation* — both tell the user where they are, where they've been, and where they can go; without it, readers and API consumers alike must explore exhaustively to orient themselves.