---
title: Category Boundaries
description: When a concern in one layer becomes a concern in another — cascade thresholds, category errors, the pre-compositional split, and concepts that are orthogonal axes rather than nested items.
tags: [framework]
---

# Category Boundaries

Not every concern fits cleanly into a single layer. Some concepts span multiple layers simultaneously. Some appear in one layer at low severity and a different layer at high severity. Some are orthogonal to the layer system entirely. This page covers the edge cases.

---

## Cascade Thresholds

A cascade occurs when a concern that begins as a lower-layer issue accumulates to the point of producing a higher-layer failure. The threshold is the point of escalation.

**Nominalization → Coherence failure**

An isolated nominalization ("the implementation of the system" instead of "implementing the system") is a word-level mechanical concern. It adds weight to the sentence and slightly obscures the action. Fix it when editing.

A *systemic* pattern of nominalization — every verb converted to a noun across a long passage — obscures the agent-action relationship throughout the text. The reader cannot follow who is doing what to what. This is no longer a word-level concern. It is a structural coherence failure. Fixing individual instances will not repair it; the problem requires identifying the source (the author does not know their actor, or the argument chain was assembled without a clear agent).

At the cascade threshold, the mechanical concern must be escalated to structural diagnosis before mechanical editing makes sense.

**Sentence complexity → Readability failure**

A single long sentence is a mechanical concern: it can be split or restructured. A document where every sentence runs long, where syntactic complexity is pervasive, is no longer a mechanical concern — it is a structural concern about prose rhythm and information chunking, and an editorial concern about register and accessibility.

**The general principle**: lower-layer concerns that are isolated are lower-layer fixes. Lower-layer concerns that are *systemic* are higher-layer failures. The `cascade_threshold` field on each concept encodes where that boundary is.

---

## Category Errors

Some concepts appear to belong to one layer but actually belong to another. Getting this wrong wastes editorial effort.

**Informal fallacy is Structural, not Mechanical**

A logical fallacy is not a grammar error. Ad hominem, false dichotomy, strawman — these are failures of argument architecture, not sentence construction. The sentence may be grammatically perfect and logically invalid. Informal fallacies live at Layer 3 (Structural), evaluated by a human-rhetorician or human-peer-reviewer, and addressed during revising or peer-review — not during copy-editing.

Treating fallacy correction as a mechanical task (something a grammar checker should catch) is a category error that will be missed by automated tools and caught too late in the editorial process.

**Readability metrics are not the same as readability**

Flesch-Kincaid, Gunning Fog, and similar readability metrics are computational proxies for reading difficulty. They can be evaluated by automated tools. But the *concern* they serve (accessibility-cognitive: whether the text's language complexity exceeds the reader's capacity) is a Mechanical/Structural concern, evaluated by a human who understands the target audience. Treating a Flesch-Kincaid score as a sufficient measure of readability is a category error. It is a measurement of one dimension of a larger concern.

**E-prime and controlled vocabulary are different things**

E-prime (eliminating all forms of "to be") is a writing philosophy — a constraint applied to word-level choices (Layer 4, Mechanical). Controlled vocabulary is an architectural system concern — defining an authoritative term set for a documentation system (Layer 1, Functional/Computational). They both involve vocabulary restriction, but their layer, their scale, their evaluator, and their responsible role are completely different. They are not subtypes of the same concept.

---

## The Pre-Compositional Split

Layer 1 (Functional) contains several concerns that are *pre-compositional*: they must be resolved before drafting begins. Audience analysis, hierarchy of purpose, genre selection, topic type (in Diataxis terms) — these are planning concerns that happen before there is a document to edit.

This creates a boundary that the layer number alone doesn't convey. Layers 2–5 are post-compositional by nature: they evaluate a text that exists. Layer 1 straddles the line: some Layer 1 concerns (asset-validity, rendering) are post-compositional; others (audience-awareness, hierarchy-of-purpose) are pre-compositional.

The `stage` dimension (D2) tracks this:
- `pre-compositional` — planning; resolved before drafting
- `compositional` — active during drafting
- `post-compositional` — applies to review and editing of completed text

The `address_when` dimension (D8) makes the triage implication explicit: `audience-awareness` → `prewriting`; this is not a revision-stage concern.

---

## Orthogonal Axes

Some concepts are not nested inside a layer — they cut across layers and cannot be assigned to one without losing their meaning.

**Plain language** is a philosophy, not a layer-specific concern. It is a multi-layer quality orientation that requires auditing concerns at Layer 3 (clear argument structure), Layer 4 (active voice, short sentences, common vocabulary), and Layer 5 (accessible register, appropriate reading level). Assigning it to a single layer collapses its meaning. In the ontology, its `determinism` is `philosophy` and its `layer` is multi-valued.

**Accessibility** was once a single concept. In v0.5.0 of this ontology, it was split into three distinct concerns that live at different layers:

- `accessibility-technical` (Layer 1 — Functional): assistive technology failures — screen reader compatibility, semantic HTML, alt text, ARIA attributes. Evaluated by human-technical-qa or automated accessibility checkers. Fixed before publishing.

- `accessibility-presentation` (Layer 5 — Editorial): visual rendering barriers — contrast, line height, white space, typography, information density. Evaluated by a human-information-architect. Part of the design and information design workflow.

- `accessibility-cognitive` (Layers 3–4 — Structural and Mechanical): language complexity exceeding reader capacity — reading level, sentence length, Flesch-Kincaid range, plain language compliance. Evaluated by human-line-editor or automated readability tools.

These three share a root concern (access for all readers) but have completely different layers, evaluators, responsible roles, `address_when` values, and tools. Collapsing them into a single "accessibility" bucket means they will be assigned to the wrong evaluator and addressed at the wrong stage.

**Audience sensitivity (D13)** is orthogonal to layer. The same mechanical concern (nominalization) has a `cosmetic`/`functional` risk severity for a general reader but can become a `safety`-level concern for a second-language learner reading safety procedures or for a reader with a cognitive disability. D13 does not relocate a concern to a different layer — it flags that the baseline risk severity (D11) is elevated for specific reader profiles.

---

## Concepts That Are Both Edges and Nodes

Some concepts appear both as lexicon nodes (things to classify) and as relationship types (ways to connect nodes). **Impact** is one example: nominalization has a `cognitive-overload` impact (a typed edge in the graph), and cognitive-overload is also a lexicon node (it can be classified, related to other concepts, and has its own evaluation tools).

When a concept is both a node and a relationship endpoint, navigate to the node's own lexicon entry to see its full classification and neighborhood. The edge tells you how two concepts are connected; the node tells you what the connected concept is.

For the complete taxonomy of relationship types and when to use each, see [[relationship-types]].
