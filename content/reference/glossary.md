---
title: Glossary
description: Key terms used in the Writing Quality Ontology — a quick-reference definition for each term.
tags: [reference]
---

# Glossary

Quick-reference definitions for the key terms of this ontology. For full entries, navigate to the [[lexicon/index|Lexicon]].

---

**address_when** (D8): The earliest writing process stage at which addressing a concern is not premature — the triage directive. Encodes the principle that lower-layer concerns should not be fixed before higher-layer concerns are stable.

**audience sensitivity** (D13): Reader profiles for whom a concern's risk severity is elevated above the general-reader D11 baseline. Defined populations: second-language learner, screen-reader user, low-vision, cognitive-disability, domain-novice, cross-cultural.

**cascade threshold**: The severity at which a lower-layer concern (e.g., pervasive nominalization) produces a higher-layer failure (e.g., structural coherence collapse). Documented per concept in the `cascade_threshold` frontmatter field.

**classification**: The set of 13 dimensions that characterize a writing quality concept: layer (D1), stage (D2), scale (D3), concern type (D4), evaluator (D5), determinism (D6), writing stage (D7), address when (D8), engineering stage (D9), impact (D10), risk severity (D11), responsible role (D12), audience sensitivity (D13).

**concern type** (D4): The category of quality being evaluated. Values: logical, grammatical, rhetorical, architectural, stylistic, computational, technical.

**determinism** (D6): Whether a concern is a hard rule (binary right/wrong), a probabilistic risk factor, or a quality philosophy. Values: rule-violation, risk-factor, philosophy.

**engineering stage** (D9): Engineering design process stage(s) where the concern has an analogous quality consideration. Stages: define, research, brainstorm, choose, build, test, improve, communicate.

**evaluator** (D5): Who or what can detect a concern. Distinct from responsible role (D12). Values: automated, human-structural-editor, human-line-editor, human-copy-editor, human-rhetorician, human-information-architect, human-peer-reviewer, human-technical-qa.

**impact** (D10): Downstream consequence of a quality failure. `cognitive-overload` is a mediating impact (mechanism); all others are terminal impacts (final outcomes).

**impediment_to**: Relationship type. The source concept is a *deterministic* obstruction to the target. Contrasts with `increases_risk_of` (probabilistic).

**increases_risk_of**: Relationship type. The source concept raises the *probability* of the target quality failure without guaranteeing it.

**layer** (D1): The editorial level — the kind of quality concern. The five layers: functional, computational, structural, mechanical, editorial.

**lard factor**: The ratio of unnecessary words to total words in a passage — a measure of prose compression. Coined by Richard Lanham.

**mediating impact**: An impact that is a *mechanism* through which terminal impacts occur, not a terminal outcome itself. `cognitive-overload` is the one mediating impact in this ontology.

**ontology**: A formal system of concepts, their properties, and their typed relationships. The Writing Quality Ontology organizes writing quality concepts in a graph of typed edges rather than a linear taxonomy.

**paramedic method**: Richard Lanham's diagnostic procedure for identifying and restructuring weak prose. Steps: find the action; name the actor; build the sentence from there; measure the lard factor.

**philosophy** (determinism): A concern whose determinism is `philosophy` is a quality orientation or lens — it spans multiple dimensions and requires judgment rather than rule application. Example: plain language.

**prerequisite_for**: Relationship type. The source concern must be resolved before the target concern is worth addressing. Encodes the triage dependency between layers.

**responsible role** (D12): Who *owns* fixing a concern in a production workflow. Distinct from evaluator (D5, who detects it).

**risk severity** (D11): The stakes of failure at the general-reader baseline. Values: cosmetic, functional, credibility, safety. Severity is audience-conditional — D13 identifies populations for whom severity is elevated.

**risk-factor** (determinism): A concern whose presence raises the *probability* of quality failure without guaranteeing it. Contrasts with rule-violation (binary) and philosophy (judgment-based).

**rule-violation** (determinism): A concern with a clear binary right/wrong answer in standard usage. Contrasts with risk-factor and philosophy.

**scale** (D3): The granularity of text the concern operates on. Values: word-level, sentence-level, paragraph-level, document-level, system-level.

**stage** (D2): The compositional stage. Values: pre-compositional (planning, before drafting), compositional (during drafting), post-compositional (after drafting — revision, editing).

**terminal impact**: An impact that is a final outcome experienced by readers — reader-comprehension, reader-trust, author-credibility, accessibility-technical, accessibility-presentation, accessibility-cognitive, inclusivity, seo-discoverability, rag-retrieval, legal-compliance, rendering.

**triage principle**: The editorial heuristic that higher-layer concerns must be stable before lower-layer concerns are worth addressing. Do not fix commas while structure is unstable. Encoded in `address_when` (D8) and `prerequisite_for` edges.

**writing stage** (D7): The writing process stage(s) where a concern is active or relevant (descriptive, multi-valued). Distinct from `address_when` (D8), which is prescriptive and single-valued.
