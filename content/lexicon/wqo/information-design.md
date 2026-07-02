---
title: Information Design
description: The visual and spatial organization of content — how layout, typography, whitespace, hierarchy, and visual encoding are used to make information accessible and navigable.
also_known_as:
  - visual information design
  - document design
  - page design
wordnet:
  term: layout
  definitions:
    - "the way in which the parts of something are arranged or laid out"
  synonyms:
    - design
    - arrangement
    - format
  related_forms:
    - lay out
classification:
  layer: editorial
  stage: post-compositional
  scale: [paragraph-level, document-level]
  concern_type: [architectural, stylistic]
  evaluator: [human-information-architect, human-line-editor]
  determinism: risk-factor
  writing_stage: [revising, editing, publishing]
  address_when: editing
  engineering_stage: [build, communicate]
  impact: [accessibility-presentation, reader-comprehension, cognitive-overload]
  risk_severity: functional
  responsible_role: [information-architect, publisher]
  audience_sensitivity: [low-vision, cognitive-disability, domain-novice]
relationships:
  related_to: [tone-voice-cadence, audience-awareness, boundary-control]
  addresses: [cognitive-overload, accessibility-presentation]
  part_of: genre
diagnostic_question: >
  Can a reader scan this document and locate what they need without reading
  sequentially? Are visual cues (headings, whitespace, lists, emphasis) aligned
  with the semantic structure of the content?
evaluation_tools:
  - Visual hierarchy audit: does heading level match content hierarchy?
  - Contrast checker (WCAG AA: 4.5:1 minimum for body text)
  - Screen reader test: does content order in DOM match visual order?
  - 5-second test: what does a reader identify as the main point after 5 seconds?
analogy:
  writing_concept: information-design
  engineering_equivalent: human-factors-design
  shared_property: form-serves-cognitive-access
  failure_mode: structure-imposes-load-rather-than-reducing-it
tags: [lexicon, layer:editorial, writing-stage:editing, concern-type:architectural]
---

# Information Design

Information design is the visual and spatial organization of content on the page or screen. It governs how layout, typography, whitespace, visual hierarchy, and graphical elements communicate structure and direct the reader's attention.

Where prose conveys meaning through words, information design conveys structure through space. A well-designed page lets a reader scan and orient before they read. It signals what is most important, where sections begin and end, what is primary and what is supplementary.

## Key Concerns

**Visual hierarchy**: the use of heading levels, font weight, size, and color to signal the organizational structure of the document. Visual hierarchy should map to semantic hierarchy — a H2 heading should be a higher-level concept than the H3 headings beneath it.

**Whitespace**: the intentional use of empty space to separate and group content. Dense paragraphs with no whitespace increase cognitive load. Whitespace around headings, between list items, and in the margins signals structure without words.

**Typography**: font choice, size, line height, and line length. Body text typically reads best at 55–75 characters per line. Very long lines (100+ characters) increase tracking difficulty.

**Lists vs. prose**: information that has enumerable, parallel items reads better as a list. Prose that *describes* a list (using "first... second... third...") is a prose rendering of a visual structure that would serve the reader better as an actual list.

**Tables and figures**: structured data and comparative information read better in tables. Processes and relationships read better in diagrams than in prose descriptions.

## Accessibility-Presentation

Information design is the primary domain of the `accessibility-presentation` impact: contrast, line spacing, font size, and layout density are barriers for readers with low vision, readers on small screens, and readers with cognitive processing differences. Design choices that seem aesthetic are access choices.

Minimum contrast for body text (WCAG AA): 4.5:1. Minimum for large text: 3:1.

## Information Design vs. Prose Structure

Information design (Layer 5, Editorial) is distinct from prose structure (Layer 3, Structural). Structural concerns govern the logical organization of argument: does the argument hold together? Information design concerns govern the visual rendering of that structure: does the layout communicate the structure clearly?

Poor information design can obscure good prose structure: a structurally coherent argument presented as an unbroken wall of text is less accessible than the same argument with visual signals. Good information design cannot compensate for structural incoherence — visual hierarchy without logical hierarchy misleads.

**Engineering parallel:** Information design maps to *human factors design* — both make form serve cognitive access; both fail when structure imposes processing load rather than reducing it, making the artifact harder to use than its content warrants.