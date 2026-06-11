---
title: The Five Layers
description: The five editorial layers of the Writing Quality Ontology — what each governs, why the ordering is not arbitrary, and how they differ from each other.
tags: [framework]
---

# The Five Layers

The ontology organizes writing quality concerns into five layers. These are not chapters or topic buckets — they are **editorial levels**, each governing a distinct kind of quality failure, each requiring a different evaluator, a different diagnostic stance, and a different kind of fix.

The layers are: **Functional**, **Computational**, **Structural**, **Mechanical**, and **Editorial**.

The ordering is not alphabetical or historical. It reflects a dependency sequence. Concerns at higher layers depend on lower layers being resolved first. You cannot usefully evaluate coherence in a document whose purpose is still unclear. You cannot usefully fix a passive construction in a sentence that will not survive the next structural revision. This is why the layers are a triage sequence, not just a classification scheme — see [[triage-sequencing]].

---

## Layer 1 — Functional

**What it governs**: The purpose and audience relationship of a document or system. Does this text do what it is supposed to do for the reader it is supposed to serve?

Functional concerns operate at the document or system level. They are pre-compositional in character — they must be resolved before lower-layer editing is meaningful. If the purpose hierarchy is wrong, structural revision cannot fix it. If the intended audience is misidentified, every word-level choice downstream is calibrated to the wrong reader.

**Key concepts at this layer**: hierarchy-of-purpose, audience-awareness, genre, topic-type (Diataxis).

**Evaluator**: human-structural-editor, human-information-architect, human-rhetorician. Automated tools cannot assess functional adequacy — they have no access to the intent behind the document.

**Determinism**: Functional failures are not rule violations with clear right/wrong answers. They are orientation failures. The document is aimed at the wrong target or built on the wrong frame.

**Cascades down to**: Structural (a functionally misaligned document will produce structurally incoherent sections because the wrong organizational logic is being applied).

---

## Layer 2 — Computational

**What it governs**: How a document performs in automated processing pipelines. Does the text chunk correctly for retrieval? Does it tokenize efficiently? Do markup structures render correctly in all output targets?

Computational concerns arose with digital publishing, structured content systems, and AI-assisted writing tools. A document that reads clearly to a human reader may fail in a retrieval-augmented generation (RAG) pipeline if its semantic chunks don't align with section boundaries. A concept that appears once per long paragraph may never surface in token-window retrieval.

**Key concepts at this layer**: tokenomics, chunking, asset-validity, controlled-vocabulary (in its system-architecture sense), rendering.

**Evaluator**: automated, human-technical-qa. These concerns are largely invisible to human readers and require tool-assisted detection.

**Determinism**: Mixed. Broken links and invalid assets are rule violations (binary). Chunking quality and token density are risk factors.

**Cascades up to**: Functional (if the computational layer fails, the document cannot serve its intended audience in its intended delivery context — a functional failure).

---

## Layer 3 — Structural

**What it governs**: The internal architecture of a document: whether its arguments hold together, whether its sections are unified, whether transitions guide the reader, whether the logic is coherent.

Structural concerns operate at paragraph and document scale. Coherence is a structural concern: does each claim connect to the next? Unity is a structural concern: does each section contain only what belongs to it? Informal fallacies live here — they are breakdowns in the logical architecture of argument, not errors of diction or grammar.

**Key concepts at this layer**: coherence, unity, cohesion, boundary-control, rhetorical-arrangement, informal-fallacy, rhetorical-mode.

**Evaluator**: human-structural-editor, human-rhetorician, human-peer-reviewer. Structural quality requires human judgment about logical relationships between ideas.

**Determinism**: Mostly risk factors. A paragraph can be technically grammatical and logically incoherent. Informal fallacies are the closest thing to rule violations at this layer — once identified, they are definitively wrong.

**Cascades from above**: Functional failures (wrong purpose, wrong genre) produce structural incoherence because the organizing logic is calibrated to the wrong ends.
**Cascades down to**: Mechanical (a structurally incoherent passage will tend to produce grammatically complex, convoluted sentences — structural failure generates mechanical noise).

---

## Layer 4 — Mechanical

**What it governs**: The correctness of the text at the level of grammar, syntax, punctuation, spelling, and orthography. These are the universal rules of the language — violations are identifiable without contextual judgment.

Mechanical concerns are the domain of copy editors, grammar checkers, and style linters. Most of them are binary: a run-on sentence is wrong; a subject-verb agreement error is wrong. Some are risk factors rather than rule violations — passive voice is not always wrong, but it increases the probability of coherence failure, especially in instructional prose.

The name **Mechanical** reflects the copy-editing industry's standard vocabulary ("mechanics"). It distinguishes this layer from Structural (which involves judgment about meaning) and Editorial (which involves judgment about convention and appropriateness). Mechanical concerns have answers; the other layers deal in orientations.

**Key concepts at this layer**: grammar-syntax, punctuation, orthography, passive-voice, nominalization, lard-factor, readability-metrics.

**Evaluator**: automated (grammar checkers, linters like Vale), human-copy-editor, human-line-editor.

**Determinism**: Rule violations (comma splices, agreement errors) and risk factors (passive voice, nominalization) both live here.

**Cascade threshold**: An isolated mechanical error is a word-level fix. A *systemic* pattern of mechanical errors — pervasive nominalization, relentless passive voice across a passage — is evidence of a structural problem: the author does not know their agent, or the argument chain is buried. At that threshold, the concern escalates to Layer 3.

---

## Layer 5 — Editorial

**What it governs**: The appropriateness of the text relative to its context, audience, and delivery medium. House style, register, tone, voice, genre conventions, localization, and information design all live here.

Editorial concerns are not universal rules — they are codified conventions. The Oxford comma is not objectively right; AP style is not objectively better than Chicago. But within a house style, there is a right answer. The **Editorial** layer is where arbitrary-but-codified choices live alongside pragmatic appropriateness: calibrating register to audience, matching tone to genre, adapting content for cultural context.

This layer also encompasses accessibility-presentation concerns: typographic choices, white space, line height, contrast — the visual layer of communication that affects whether the text can be received by all readers.

**Key concepts at this layer**: house-style, tone-voice-cadence, information-design, localization, terminology-consistency, genre (in its convention sense), plain-language (as a philosophy).

**Evaluator**: human-line-editor, human-information-architect, human-rhetorician. Convention-matching requires knowing the target conventions; register calibration requires judgment about context.

**Determinism**: Mixed. Some editorial choices are rule-like once a style guide is specified (use Oxford commas or don't — binary within house style). Register and tone appropriateness are risk factors and philosophical judgments.

**Note**: The Editorial layer intentionally blurs two sub-concerns — editorial conventions (arbitrary but standardized, like mechanical rules) and pragmatic appropriateness (context-dependent). No single term perfectly covers both. "Editorial" is the best available label because it reflects industry usage and matches how production workflows actually divide responsibility.

---

## What Makes the Layers Distinct

The layers are distinguished by three properties:

**1. What kind of failure**: Functional = orientation failure. Computational = pipeline failure. Structural = logic failure. Mechanical = rule violation or correctness risk. Editorial = convention mismatch or appropriateness failure.

**2. Who evaluates it**: Structural failures require human judgment about meaning. Mechanical failures can be detected by tools. Editorial failures require knowing the target conventions. The evaluator dimension (D5) tracks this.

**3. When to address it**: Higher layers must be stable before lower layers are worth addressing. This is the triage principle — see [[triage-sequencing]].

For concerns that appear in multiple layers (plain language, accessibility), see [[category-boundaries]].
