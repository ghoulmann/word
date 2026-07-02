---
title: Heading Clarity
description: The degree to which a heading accurately predicts and summarizes the content of its section — a primary navigation and comprehension aid for human readers and retrieval systems.
wordnet:
  term: heading
  definitions:
    - "a title or caption at the top of a section of text"
    - "a label that identifies the subject matter of text that follows"
  synonyms:
    - header
    - section title
  related_forms:
    - head
    - headline
classification:
  layer: structural
  stage: post-compositional
  scale: [paragraph-level, document-level]
  concern_type: rhetorical
  evaluator: [automated, human-structural-editor, human-information-architect]
  determinism: risk-factor
  writing_stage: [drafting, revising, editing]
  address_when: revising
  engineering_stage: [build, test, communicate]
  impact: [reader-comprehension, cognitive-overload, rag-retrieval, accessibility-technical]
  risk_severity: functional
  responsible_role: [structural-editor, information-architect, author]
  audience_sensitivity: [screen-reader-user, domain-novice]
cascade_threshold: >
  A single vague heading impedes navigation in that section. A pattern
  of vague, misleading, or question-bait headings across a document
  makes the document's structure illegible — readers cannot scan to find
  what they need, and retrieval systems cannot chunk the content
  meaningfully. At that threshold, heading revision is a structural
  intervention, not a line edit.
relationships:
  subtype_of: coherence
  impediment_to: reader-comprehension
  related_to: [information-design, unity, chunking, rhetorical-arrangement]
  increases_risk_of: [cognitive-overload, rag-retrieval]
  commonly_confused_with: unity
diagnostic_question: >
  Does this heading accurately predict what the section contains, or does
  a reader who reads only headings get a false or incomplete map of the document?
evaluation_tools:
  - Heading-only scan (read only H1–H3 in sequence; assess whether they form a coherent outline)
  - Screen reader navigation test
  - Vale custom rule (heading-to-content coherence heuristics)
analogy:
  writing_concept: heading-clarity
  engineering_equivalent: interface-specification
  shared_property: contract-predicts-contents
  failure_mode: consumers-cannot-navigate-without-reading-everything
tags: [lexicon, layer:structural, writing-stage:revising, concern-type:rhetorical]
---

# Heading Clarity

A heading is a promise. It tells the reader what the section contains and implicitly commits the section to delivering on that prediction. Heading clarity measures how well a heading keeps that promise — whether a reader who reads only the heading can accurately anticipate the section's scope, argument, and conclusion.

Unclear headings come in several varieties: the vague heading ("Overview," "Details," "Other Considerations") that promises nothing; the misleading heading whose section delivers something different from what was implied; the question heading ("What Is Coherence?") that draws readers in without telling them whether the question is answered, and if so, how; and the stacked noun heading ("Content Quality Assessment Framework Considerations") that is formally informative but cognitively opaque.

## Why It Matters

Headings serve two navigation systems simultaneously: human readers scanning to find what they need, and retrieval systems chunking a document into semantically labeled sections. When headings fail, both systems fail. A human reader skimming an unfamiliar document relies on headings to decide where to read and where to skip. A screen reader user navigating by headings relies on them entirely — the heading IS the navigation. A RAG system retrieving relevant passages uses heading context to weight chunk relevance; a misleading heading contaminates the chunk with a false label.

Heading clarity is also a structural integrity test: if the headings don't form a coherent, predictive outline when read in sequence, the document's argument or organization is probably unclear.

## How It Fails

**Vague headings** name a category without specifying the content: "Background," "Results," "Next Steps." These are organizational placeholders, not informative labels.

**Misleading headings** create a false contract. A heading says "Why X Matters" but the section is actually about how X works. The mismatch becomes navigation debt: readers who followed the heading arrive at the wrong place.

**Question headings without answers** are common in FAQ-style content that has proliferated into technical documentation. "What causes nominalization?" is an adequate FAQ heading. In a technical document, it fails because the reader doesn't know whether the section answers the question, partially answers it, or raises further questions.

**Over-abstract headings** ("Considerations," "Framework," "Methodology") create the illusion of structure without its substance.

## Diagnosis

Read only the headings of the document in sequence. Do they form a logical, predictive outline? Does each heading accurately summarize what follows? Would a reader who skipped the body and read only headings get a correct (if compressed) understanding of the document?

The diagnostic question: *does a reader who reads only this heading get an accurate prediction of what the section contains?*

## Cascade Threshold

A single vague heading is a localized navigation failure. A document-wide pattern of vague, misleading, or inconsistent headings makes the document's structure illegible — neither human readers nor retrieval systems can build a reliable map. At that threshold, heading revision is a structural intervention requiring [[rhetorical-arrangement]] and [[information-design]] review before individual heading rewrites.

**Engineering parallel:** Heading clarity maps to *interface specification* — both are contracts: the heading (or interface) promises what the section (or component) delivers; when the contract is vague, consumers cannot navigate without reading everything.