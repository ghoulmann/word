---
title: By Impact
description: Writing quality concerns organized by what they put at risk when they fail — from reader comprehension failures to legal compliance.
tags: [by-impact]
---

# By Impact

This view organizes concepts by D10 — impact: what downstream consequence occurs when the concern fails. Impact values include both *terminal impacts* (the final failure experienced by readers) and one *mediating impact* (the mechanism through which terminal impacts occur).

**Note on cognitive-overload**: [[cognitive-overload]] is a mediating impact — it is the mechanism through which many terminal impacts manifest. A concern that increases cognitive load does not necessarily cause comprehension failure, but makes it more likely. See the [[cognitive-overload]] entry for details.

---

## Reader Comprehension
*The reader cannot understand or follow the text*

This is the most common terminal impact for writing quality failures.

- [[coherence]] — incoherent argument chain directly produces comprehension failure
- [[nominalization]] — systemic pattern obscures actor-action relationships
- [[passive-voice]] — buried agency impedes comprehension in instructional prose
- [[informal-fallacy]] — logical errors break the argument the reader is trying to follow
- [[chunking]] — poor segmentation prevents readers from locating information
- [[readability-metrics]] — reading level exceeding audience capacity
- [[rhetorical-arrangement]] — wrong organizational order for the reader's needs
- [[unity]] — unfocused sections force the reader to extract the point
- [[punctuation]] — meaning-bearing punctuation errors

---

## Reader Trust
*The reader loses confidence in the author or source*

- [[informal-fallacy]] — logical failures undermine argumentative credibility
- [[asset-validity]] — broken links signal carelessness
- [[ethos-pathos-logos]] — failure to establish credibility
- [[tone-voice-cadence]] — inappropriate register for the context

---

## Author Credibility
*Professional or academic standing damaged*

- [[grammar-syntax]] — grammatical errors in formal contexts
- [[orthography]] — spelling errors in published work
- [[informal-fallacy]] — logical errors in published argument
- [[e-prime]] (philosophical relevance) — writing style as credibility signal
- [[weak-words]] — vague vocabulary implies imprecise thinking

---

## Cognitive Overload *(mediating)*
*Increased mental processing demand; mechanism through which many terminal impacts manifest*

- [[nominalization]] — buries action in noun phrases
- [[passive-voice]] — removes agent, forcing inference
- [[lard-factor]] — deadwood inflates sentence processing load
- [[information-design]] — dense layout imposes visual-cognitive load
- [[chunking]] — poor segmentation forces navigation overhead
- [[terminology-consistency]] — variation forces readers to determine if differences are meaningful

---

## Accessibility — Technical
*Assistive technology fails (screen readers, ARIA, semantic markup)*

Layer 1 (Functional) accessibility concerns. Evaluated by human-technical-qa and automated accessibility checkers.

- [[asset-validity]] — missing alt text on images, broken media
- [[information-design]] — semantic markup failures that affect screen reader output
- (see also: WCAG compliance, accessible HTML — out of scope for this ontology but related)

---

## Accessibility — Presentation
*Visual rendering impedes access (contrast, whitespace, typography)*

Layer 5 (Editorial) accessibility concerns. Affects low-vision readers.

- [[information-design]] — contrast, line height, font size, whitespace
- [[tone-voice-cadence]] — dense, monotonous prose without visual rhythm

---

## Accessibility — Cognitive
*Language complexity exceeds reader capacity*

Layer 3–4 concerns. Affects readers with cognitive disabilities and second-language learners.

- [[readability-metrics]] — reading level assessment
- [[plain-language]] — multi-layer compliance
- [[lard-factor]] — sentence compression reduces working memory load
- [[nominalization]] — restoration of clear actor-action reduces processing burden

---

## Inclusivity
*Language or framing excludes or harms readers*

- [[localization]] — culturally specific content that excludes non-local readers
- [[audience-awareness]] — failure to account for the full range of readers
- [[tone-voice-cadence]] — register that implicitly assumes a narrow reader profile

---

## SEO / Discoverability
*Search and retrieval degraded*

- [[terminology-consistency]] — variant terms fragment search relevance
- [[controlled-vocabulary]] — authoritative terms drive search indexing
- [[chunking]] — document structure affects what search engines index
- [[information-design]] — heading hierarchy affects search engine interpretation

---

## RAG Retrieval
*AI/semantic search chunking or retrieval fails*

- [[chunking]] — primary concern for RAG pipeline quality
- [[tokenomics]] — token efficiency in retrieval context
- [[terminology-consistency]] — variant terms degrade retrieval precision
- [[controlled-vocabulary]] — canonical terms improve semantic matching

---

## Legal / Compliance
*Regulatory or contractual exposure*

- [[localization]] — locale-specific legal requirements (GDPR, etc.)
- [[asset-validity]] — broken or inaccurate references in legal documents
- [[plain-language]] — regulatory mandates for accessible language (Plain Writing Act)

---

## Rendering
*Visual or technical output breaks*

- [[asset-validity]] — broken images, media, or embedded resources
- [[tokenomics]] — content that exceeds model context limits in AI workflows
- [[information-design]] — markup that renders incorrectly in target environment
