---
title: By Audience
description: Writing quality concerns organized by which reader profiles face heightened risk — D13 audience sensitivity above the general-reader baseline.
tags: [by-audience]
---

# By Audience

D13 (audience sensitivity) identifies reader profiles for whom a concern's risk severity is *elevated above the general-reader baseline*. The D11 (risk severity) values reflect the general reader; D13 notes when those baselines are insufficient for specific populations.

Omitting a reader profile here does not mean a concern is unimportant for them. It means the concern's risk is *not specifically elevated* beyond the general baseline for that profile.

For the full explanation of how D13 interacts with D11, see [[five-layers]] and [[category-boundaries]].

---

## Second-Language Learners
*Readers for whom English (or the target language) is not a first language*

These readers process language and content simultaneously, leaving less working memory for comprehension. Language complexity that is merely effortful for native readers may be genuinely prohibitive.

- [[nominalization]] — noun-heavy prose obscures actor-action in ways that compound the second-language processing burden
- [[passive-voice]] — agent-absent constructions are harder to interpret when the reader has less syntactic automaticity
- [[lard-factor]] — long sentences require holding more information in working memory
- [[weak-words]] — idioms and vague vocabulary are less interpretable without native-level contextual knowledge
- [[localization]] — culturally specific references and idioms are direct barriers
- [[readability-metrics]] — reading level targets should be lower for second-language audiences
- [[plain-language]] — the full philosophy directly reduces language-processing burden
- [[tone-voice-cadence]] — idiomatic or highly colloquial register impedes comprehension

---

## Screen Reader Users
*Readers who navigate via assistive technology that reads aloud or presents braille output*

The primary sensitivity is to technical accessibility failures — semantic structure and markup quality determine what the screen reader can deliver.

- [[asset-validity]] — missing alt text on images is a direct access barrier; broken landmarks prevent navigation
- [[information-design]] — semantic heading structure determines how screen reader users navigate; visual-only design cues are inaccessible
- [[chunking]] — well-chunked documents with semantic structure are more navigable by screen reader
- [[house-style]] — heading level compliance (H1 → H2 → H3, not skipping levels) is a screen reader navigation concern

---

## Low-Vision Readers
*Readers who use screen magnification, high-contrast modes, or have reduced visual acuity*

Primary sensitivity is to presentation and visual design — contrast, typography, and layout.

- [[information-design]] — contrast ratio, font size, line height, whitespace are direct access factors; WCAG AA minimum 4.5:1 contrast for body text
- [[lard-factor]] — dense, compressed text is harder to read under magnification
- [[tone-voice-cadence]] — monotonous prose without visual rhythm markers (headings, lists) imposes additional burden under magnification

---

## Readers with Cognitive Disabilities
*Readers for whom cognitive processing, working memory, or attention differ from the population baseline*

This is a broad category including ADHD, dyslexia, acquired brain injuries, intellectual disabilities, and others. Common feature: increased sensitivity to complexity, noise, and lack of structure.

- [[nominalization]] — buries meaning in noun phrases that require decomposition
- [[passive-voice]] — obscures agency; requires mental reordering
- [[lard-factor]] — every additional word is an additional processing demand
- [[information-design]] — clear visual hierarchy and whitespace directly reduce cognitive load
- [[plain-language]] — the multi-layer philosophy is the primary mitigation
- [[readability-metrics]] — lower reading level targets reduce processing demand
- [[coherence]] — explicit logical structure reduces the inferential burden on readers who struggle with implicit connections
- [[chunking]] — short, self-contained units are easier to process than long continuous text

---

## Domain Novices
*Readers without specialist knowledge of the subject area*

All jargon requires definition or elimination for domain novices. Dense reference to assumed shared knowledge is a barrier.

- [[controlled-vocabulary]] — authoritative terms must be defined, not assumed
- [[terminology-consistency]] — variation in terms is even more confusing when the reader doesn't know the canonical form
- [[audience-awareness]] — misidentifying the reader as more expert than they are produces content that consistently fails
- [[topic-type]] — tutorials and explanations are appropriate for novices; reference and how-to guides assume more background
- [[weak-words]] — domain-specific vague vocabulary ("the system processes the data appropriately") is more opaque to novices
- [[ethos-pathos-logos]] — novice readers may not have the background to evaluate logos; ethos and pathos matter more

---

## Cross-Cultural Readers
*Readers from different cultural, regional, or national backgrounds than the intended primary audience*

Cultural assumptions about shared values, implicit framing, humor, and appropriate directness vary significantly.

- [[localization]] — primary concern; cultural adaptation goes beyond language
- [[tone-voice-cadence]] — directness conventions, formality expectations, and reader-writer relationship vary
- [[audience-awareness]] — cross-cultural readers require explicit consideration, not default-to-primary-culture assumptions
- [[genre]] — genre conventions are culturally variable; what a "report" looks like differs across cultures
- [[ethos-pathos-logos]] — what counts as credibility-establishing, emotionally resonant, or logically sufficient varies by cultural context
- [[informal-fallacy]] — some fallacies are culturally normalized in one context and recognized as errors in another (e.g., appeal to authority varies dramatically)
