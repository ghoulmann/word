---
title: Informal Fallacy
description: A logical error in argument structure — a form of reasoning that appears valid but contains a flaw in its premises, inferences, or relevance.
also_known_as:
  - logical fallacy
  - argument error
  - reasoning error
wordnet:
  term: fallacy
  definitions:
    - "a misconception resulting from incorrect reasoning"
    - "an argument that appears valid but is not"
  synonyms:
    - sophism
    - casuistry
  related_forms:
    - fallacious
    - fallaciously
classification:
  layer: structural
  stage: [compositional, post-compositional]
  scale: [paragraph-level, document-level]
  concern_type: logical
  evaluator: [human-rhetorician, human-peer-reviewer, human-structural-editor]
  determinism: rule-violation
  writing_stage: [revising, peer-review]
  address_when: revising
  engineering_stage: [define, research, choose, communicate]
  impact: [reader-trust, author-credibility, reader-comprehension]
  risk_severity: credibility
  responsible_role: [peer-reviewer, structural-editor, author]
relationships:
  impediment_to: [coherence, reader-trust]
  related_to: [rhetorical-arrangement, hierarchy-of-purpose]
  subtype_of: coherence-failure
diagnostic_question: >
  Does the conclusion follow necessarily from the premises? Is there an
  unstated assumption the reader would not accept if it were made explicit?
  Is the evidence presented actually relevant to the claim?
evaluation_tools:
  - Peer review
  - Socratic questioning (interrogate each claim and inference)
  - List of informal fallacies (ad hominem, straw man, false dichotomy, etc.)
analogy:
  writing_concept: informal-fallacy
  engineering_equivalent: logical-gap-in-design-argument
  shared_property: valid-inference-required-between-premises-and-conclusion
  failure_mode: invalid-conclusion-accepted-because-reasoning-appears-sound
tags: [lexicon, layer:structural, writing-stage:revising, concern-type:logical]
---

# Informal Fallacy

An informal fallacy is a logical error in argument structure. Unlike formal fallacies (which violate the logical form of a syllogism), informal fallacies arise from problems in content, context, or relevance: the premises are irrelevant, the inference doesn't hold, the evidence is misrepresented, or an unstated assumption does the work the argument cannot.

Informal fallacies are Structural (Layer 3) concerns — not grammatical errors. A sentence containing an informal fallacy may be grammatically correct, well-punctuated, and clearly expressed. The error is in what it claims and how the claim is supported, not how the sentence is constructed.

## Common Types

**Ad hominem**: attacking the person making an argument rather than the argument itself. The character of the arguer is irrelevant to the validity of the argument.

**Straw man**: misrepresenting an opposing position to make it easier to attack. The text claims to be responding to a position that the opponent doesn't actually hold.

**False dichotomy**: presenting two options as exhaustive when other options exist. "Either we implement this system or we accept failure" — a third option may be to redesign the requirement.

**Appeal to authority**: using an authority's position as a substitute for evidence. Legitimate citation of expertise becomes a fallacy when the authority is invoked to shut down examination rather than support a claim.

**Slippery slope**: asserting that a small step will inevitably lead to a chain of extreme consequences without establishing that the intermediate steps are likely.

**Hasty generalization**: drawing a broad conclusion from an unrepresentative sample.

**Post hoc ergo propter hoc**: concluding that because B followed A, A caused B, without establishing a causal mechanism.

**Begging the question (circular reasoning)**: using the conclusion as a premise, either explicitly or in disguised form.

## Why Informal Fallacy Is Structural, Not Mechanical

A logical fallacy is not a grammar error and cannot be caught by automated tools. It requires a human evaluator with the capacity to assess the *meaning* and *relationships between claims* — a human-rhetorician or human-peer-reviewer.

Treating fallacy detection as a mechanical task (something a grammar checker should flag) is itself a category error: see [[category-boundaries]].

Informal fallacies belong at the revising stage — this is when the argument architecture is visible and can be examined as a whole. They cannot be identified during drafting (when the argument is still being constructed) and are hard to identify when embedded in a long, complex document without stepping back to assess the whole structure.

**Engineering parallel:** Informal fallacy maps to a *logical gap in a design argument* — both involve a conclusion that appears to follow from premises but doesn't; both fail when a reviewer accepts the argument without verifying that the inference is actually valid.