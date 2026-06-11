---
title: Relationship Types
description: The open set of typed edges connecting concepts in the ontology — what each type means, how impediment_to differs from increases_risk_of, and how to choose when both seem to apply.
tags: [framework]
---

# Relationship Types

The ontology represents knowledge not only through classification (which layer, which stage, which scale) but through **typed edges** connecting concepts. These edges are the primary intellectual content of the system: they encode what writing quality concepts do to each other.

The set of relationship types is **open-ended**. New types will be defined as new concepts are mapped and existing concepts reveal connections that don't fit existing types. The types listed here are the current set — well-defined, with clear distinctions. They are not exhaustive.

---

## The Current Relationship Types

### subtype_of
*This concept is a specific kind of the target.*

Taxonomic containment. The child concept inherits all the properties of the parent but is more specific. A reader can substitute the parent wherever the child appears and be approximately right, though imprecise.

**Example**: nominalization `subtype_of` word-level-error. Nominalization is a specific kind of word-level error: it inherits the scale, layer, and general character of word-level errors, and adds the specific mechanism of verb-to-noun conversion.

**Contrast with aspect_of**: subtype_of is taxonomic (nominalization *is a kind of* word-level error). aspect_of is dimensional (lard-factor *is a facet of* sentence-efficiency, not a subtype).

---

### aspect_of
*This concept is one facet or measurable property of the target.*

The source concept is a dimension, property, or measurable characteristic of the target. It does not inherit the target's classification — it contributes to understanding the target from one angle.

**Example**: lard-factor `aspect_of` sentence-efficiency. Lard factor measures one dimension of how efficient a sentence is. It does not make lard-factor a subtype of sentence-efficiency; rather, monitoring lard factor gives you one lens on sentence efficiency.

**Contrast with subtype_of**: An aspect is a property or dimension, not a taxonomic category.

---

### impediment_to
*This concept is a deterministic obstruction to the target.*

When the source concept is present, the target is reliably degraded or blocked. The relationship is **deterministic** — the presence of the source reliably produces the obstruction. If you can identify the source, you can predict the failure.

**Example**: informal-fallacy `impediment_to` coherent-argument. A logical fallacy in the argument chain is not a probabilistic risk to coherence — it is a direct structural failure of the argument. The fallacy *is* the incoherence; removing the fallacy is removing the impediment.

**Contrast with increases_risk_of**: impediment_to is deterministic; increases_risk_of is probabilistic. Use impediment_to when you can say "this *causes* the failure"; use increases_risk_of when you can only say "this *raises the probability of* the failure."

---

### increases_risk_of
*This concept raises the probability of the target occurring (probabilistic, not certain).*

The source concept is a risk factor: its presence makes the target more likely but does not guarantee it. The same feature that increases risk in one context may be entirely appropriate in another.

**Example**: nominalization `increases_risk_of` coherence-failure. Heavy nominalization makes coherence failure more likely — especially in instructional or technical prose where agent-action clarity matters. But nominalizations appear in well-written formal prose without causing coherence failure. The relationship is probabilistic.

**Contrast with impediment_to**: The presence of passive voice does not make a text incoherent. It makes incoherence *more likely*, especially in certain contexts. This is increases_risk_of, not impediment_to.

This distinction matters for editorial workflow: impediments must be removed; risk factors must be weighed in context.

---

### controlled_by
*This concept is governed, constrained, or diagnosed by the target.*

The target is a rule, method, framework, or practice that governs the source. When the target is applied, it controls instances of the source.

**Example**: passive-voice `controlled_by` paramedic-method. The paramedic method is a procedural rule for diagnosing and restructuring sentences. When applied, it governs passive constructions — identifying them, redirecting them, or consciously retaining them.

**Example**: nominalization `controlled_by` e-prime (partially). E-prime constrains verb-to-noun conversions by requiring the writer to rephrase using a form of the verb rather than a derived noun.

---

### prerequisite_for
*The target concern cannot be usefully addressed until this concern is resolved first.*

The triage relationship. The source must be stable before the target is worth acting on. Addressing the target before the source is resolved wastes effort and may produce false confidence.

**Example**: coherence `prerequisite_for` mechanical-editing. Structural coherence must be established before word-level editing is meaningful. Editing mechanics in a structurally broken document polishes sentences that may be cut or restructured.

**Example**: audience-awareness `prerequisite_for` genre-selection. You cannot choose the right form until you know the reader.

This relationship type encodes the triage principle described in [[triage-sequencing]]. The `address_when` dimension (D8) is the per-concept expression of the same idea; `prerequisite_for` edges encode it as explicit graph relationships between specific concepts.

---

### measured_by
*The target is a metric or method that quantifies this concept.*

The target is a measurement instrument — a score, index, checklist, or procedure — for the source. This relationship is used when a concept has a well-defined quantitative or procedural measure.

**Example**: readability `measured_by` flesch-kincaid-score. The Flesch-Kincaid formula produces a grade-level estimate of reading difficulty for a text.

**Contrast with operationalized_as**: measured_by implies quantification or scoring; operationalized_as implies operationalization as a practice or procedure that makes the concept detectable, without necessarily producing a numerical score.

---

### operationalized_as
*The target is how this abstract concept is made concrete or detectable.*

The source is an abstract concern; the target is the concrete procedure, test, or practice that makes it observable or actionable.

**Example**: sentence-efficiency `operationalized_as` lard-factor. Lard factor is the procedure that makes "sentence efficiency" into something you can measure by counting deadwood against total words.

**Example**: plain-language `operationalized_as` federal-plain-language-guidelines. The abstract philosophy of plain language becomes actionable through concrete style guidelines.

**Contrast with measured_by**: operationalized_as produces practices and procedures, not necessarily scores.

---

### commonly_confused_with
*The target is frequently mistaken for this concept; they are actually distinct.*

A navigational warning: readers may search for one when they mean the other. Use this when two concepts are regularly conflated in practice, usually because they share a surface similarity, a shared domain, or a common misconception.

**Example**: passive-voice `commonly_confused_with` nominalization. Both convert actions into non-action forms; both obscure the actor; both appear on the same checklists. But they are different mechanisms with different fixes and different severity profiles.

**Example**: cohesion `commonly_confused_with` coherence. Cohesion is local (sentence-to-sentence surface connection); coherence is global (argument-level logical structure). They are often treated as synonyms but the distinction matters for diagnosis.

This relationship is symmetric in practice: if A is commonly confused with B, B is also commonly confused with A. It is not symmetric in graph terms — you may encounter entries where only one side has the edge.

---

### related_to
*Non-directional association; use when no more specific type fits.*

A catch-all for relationships that are real but do not have the specificity of any of the above types. Prefer more specific types. Use `related_to` only when the relationship is meaningful and worth encoding but genuinely doesn't fit a more precise type.

---

### part_of
*This concept is a component of the target.*

The source is a structural component of the target. Distinct from `subtype_of` (which is taxonomic) and `aspect_of` (which is dimensional). `part_of` is compositional: the source contributes directly to the structure of the target.

**Example**: topic-sentence `part_of` paragraph-structure. The topic sentence is a structural element within a paragraph.

---

### addresses
*This concept is a technique or practice that corrects or mitigates the target.*

The source is a remedy for the target. Use when a concept (typically a method, technique, or philosophy) directly targets a quality failure.

**Example**: paramedic-method `addresses` nominalization. The paramedic method is a technique whose primary purpose is diagnosing and restructuring nominalized prose.

**Example**: plain-language `addresses` cognitive-overload. The plain language philosophy is a set of practices intended to reduce cognitive load in texts.

**Contrast with controlled_by**: controlled_by describes governance (the method constrains instances of the concern); addresses describes remediation (the method targets the failure). A method can both control (ongoing practice) and address (correct existing failures). Use the one that better describes the relationship.

---

### produces
*Applying or violating this concept generates the target as an output.*

The source concept, when applied or when violated, reliably generates the target as a downstream output.

**Example**: wall-of-text `produces` cognitive-overload. A dense, unbroken block of text reliably produces cognitive overload as a reader experience — this is the mechanism of the failure.

**Example**: paramedic-method `produces` active-voice-prose. Applying the paramedic method produces active-voice constructions as its output.

The produces edge can be bidirectional in content (the same concept may produce one thing when applied correctly and another when violated), but each edge in the graph is directed: source → produces → target.

---

## How to Choose When Types Overlap

**impediment_to vs. increases_risk_of**

Ask: is the failure *guaranteed* by the presence of the source, or merely *more probable*? Informal fallacies guarantee argument failure (impediment_to). Passive voice raises the probability of comprehension difficulty without guaranteeing it (increases_risk_of).

**controlled_by vs. addresses**

`controlled_by` is governance — an ongoing rule or method that constrains a concern. `addresses` is remediation — a technique that corrects an existing failure. The paramedic method both controls passive voice (ongoing) and addresses nominalization (remedial). In ambiguous cases, prefer the relationship that better describes how the method will be used in the workflow described.

**subtype_of vs. aspect_of**

Ask: is the source *a kind of* the target (subtype_of) or *a property of* the target (aspect_of)? Nominalization is *a kind of* word-level error (subtype). Lard factor is *a property* of a sentence, a lens on sentence efficiency (aspect).

**measured_by vs. operationalized_as**

Ask: does the target produce a score or number (measured_by) or a practice or checklist (operationalized_as)?

---

## Adding New Relationship Types

When a relationship is real, meaningful, and doesn't fit any existing type, define a new type. Record its name (snake_case, as in `subtype_of`), its definition, its directionality, and an example. Add it to `schema/concept.schema.json` under `x-known-relationship-types` and add its label to `RELATIONSHIP_LABELS` in `plugins/wqo-components/src/util/concepts.ts`.

The schema accommodates new types without structural changes — the `relationships` field uses open-ended `additionalProperties`. New types will render automatically in the relationship list component with the fallback label (underscores replaced with spaces) until a canonical label is added.
