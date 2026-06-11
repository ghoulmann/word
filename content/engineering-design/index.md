---
title: By Engineering Design Stage
description: Writing quality concerns mapped to the stages of the engineering design process — surfacing the shared iterative logic of writing and engineering.
tags: [engineering-design]
---

# By Engineering Design Stage

The engineering design process and the writing process share a deep structural parallel: both are iterative, both have quality concerns that must be resolved in sequence, and both involve moving from abstract goals through concrete execution to external delivery.

This view maps writing quality concerns to the engineering design process stages where they have analogous concerns. It is a navigational lens for readers with engineering backgrounds — it does not change what the concerns are, only which stage illuminates them.

The engineering design process stages used here: **Define → Research → Brainstorm → Choose → Build → Test → Improve → Communicate**

This is a descriptive view — which stages are conceptually parallel. It is not a prescription for when to apply writing quality concerns in engineering workflows (use [[writing-process]] for that).

---

## [[define|Define]]
*Establishing the problem, constraints, and success criteria*

Analogue: [[hierarchy-of-purpose]] and [[audience-awareness]] — understanding who has the problem, what the problem is, and what success looks like. All downstream decisions are calibrated against the definition stage.

**Parallel writing concerns**:
- [[hierarchy-of-purpose]] — define the purpose before any compositional choice
- [[audience-awareness]] — who has the problem? Who is the primary reader?
- [[topic-type]] — what kind of documentation will serve this problem?
- [[chunking]] — plan the documentation architecture
- [[controlled-vocabulary]] — agree on terms before work begins
- [[rhetorical-mode]] — what primary organizing logic will the document use?
- [[informal-fallacy]] — ensure the problem definition is logically sound
- [[hierarchy-of-purpose]] — define criteria before evaluating solutions

---

## [[research|Research]]
*Gathering information; understanding the solution space*

Analogue: the writing equivalent is collecting evidence, surveying existing work, and establishing what is known. Research writing quality concerns apply when documenting findings.

**Parallel writing concerns**:
- [[coherence]] — research notes and documentation must cohere across sources
- [[informal-fallacy]] — over-generalization from limited data; inappropriate authority citation
- [[audience-awareness]] — who will use this research? What level of detail serves them?

---

## [[brainstorm|Brainstorm]]
*Generating multiple possible approaches without premature evaluation*

Analogue: invention and ideation in writing. The equivalent writing stage is prewriting — generating possibilities without committing to arrangement or form.

**Parallel writing concerns**:
- [[rhetorical-arrangement]] — brainstorming equivalent to trying different organizational strategies
- [[genre]] — considering what kind of document will serve the purpose
- [[ethos-pathos-logos]] — what combination of appeals will the document need?

---

## [[choose|Choose]]
*Evaluating options and selecting the best solution with documented rationale*

Analogue: the most argument-heavy stage of engineering documentation. The design rationale is an argumentative document: criteria → evaluation → selection → justification.

**Parallel writing concerns**:
- [[rhetorical-arrangement]] — presenting criteria before evaluation; evaluation before selection
- [[informal-fallacy]] — false dichotomy (presenting fewer options than existed); post-hoc rationalization (the decision came first, the criteria after)
- [[ethos-pathos-logos]] — a credible selection process depends on transparent logos (evidence and reasoning)
- [[hierarchy-of-purpose]] — the primary criterion governs; secondary criteria operate within its constraints

---

## [[build|Build]]
*Implementation; translating design into a working system*

Analogue: drafting. The equivalent concern is documenting the build accurately and maintaining documentation alignment with the implementation.

**Parallel writing concerns**:
- [[boundary-control]] — modular decomposition; each component has defined scope
- [[terminology-consistency]] — consistent naming across implementation and documentation
- [[controlled-vocabulary]] — term alignment between code, specs, and documentation
- [[chunking]] — documentation architecture that matches system architecture

---

## [[test|Test]]
*Verifying that the solution meets criteria; finding and documenting failures*

Analogue: the editing and review stage. Testing documentation is typically procedural (how-to) and informational (reference); test reports are expository or argumentative.

**Parallel writing concerns**:
- [[asset-validity]] — are all documented procedures and links intact?
- [[readability-metrics]] — does documentation for end users meet accessibility and reading-level targets?
- [[grammar-syntax]] — automated quality checks have direct analogues in automated testing
- [[topic-type]] — test procedures must be how-to format; test reports must be expository or argumentative

---

## [[improve|Improve]]
*Iteration based on test results and user feedback*

Analogue: revision. After testing reveals failures, iteration addresses them at the correct layer — structural first, mechanical second.

**Parallel writing concerns**:
- [[coherence]] — structural revision based on review findings
- [[passive-voice]], [[nominalization]], [[lard-factor]] — mechanical revision after structural stability
- [[audience-awareness]] — user feedback as proxy audience response

---

## [[communicate|Communicate]]
*Presenting the solution to stakeholders and end users; documentation and presentations*

Analogue: the full range of editorial concerns apply at the communication stage. This is where writing quality most visibly affects engineering outcomes.

**Parallel writing concerns**:
- [[tone-voice-cadence]] — calibrating register for the audience (technical reviewers vs. general public vs. client)
- [[information-design]] — visual presentation of complex technical information
- [[localization]] — if the communication reaches cross-cultural audiences
- [[ethos-pathos-logos]] — establishing credibility; engaging the audience's concerns; making the argument
- [[plain-language]] — ensuring accessible communication of technical content
- [[rhetorical-arrangement]] — structure appropriate to the audience and purpose (front-loaded for executives; detailed for technical review)
