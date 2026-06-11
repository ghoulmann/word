---
title: Triage Sequencing
description: The triage principle — why higher-layer concerns must be stable before lower-layer concerns are worth addressing, and how address_when and prerequisite_for encode this in the ontology.
tags: [framework]
---

# Triage Sequencing

## The Core Principle

Do not fix commas while structure is unstable.

This is not advice about efficiency alone, though efficiency is part of it. It is advice about validity. Mechanical editing on a passage that has not yet survived structural revision is editing that may never have existed. The sentence you polish may be cut. The comma you correct may be in a clause that will be restructured. The passive construction you rewrite may be carrying an argument that will be inverted.

More importantly: mechanical correctness in a structurally incoherent passage creates false confidence. A reader — including the author-as-revisor — can be misled by clean prose into believing the argument is sound. Polished sentences that say nothing clearly obscure the fact that what they say is confused.

This is the triage principle: **address concerns in order of layer, from highest to lowest**. Functional concerns first. Structural concerns only once functional framing is stable. Mechanical concerns only once structural logic holds. Editorial concerns last of all.

---

## D8 — Address When

The `address_when` dimension (D8) encodes the triage principle as a per-concept datum. It specifies the **earliest writing process stage at which addressing this concern is not premature**.

The values follow the writing process stages: `prewriting` → `drafting` → `revising` → `peer-review` → `editing` → `publishing`.

Examples:

| Concept | address_when | Rationale |
|---|---|---|
| audience-awareness | prewriting | Must be resolved before any compositional choice is meaningful. All other concerns are downstream of knowing the reader. |
| coherence | revising | Cannot meaningfully evaluate argument coherence during drafting — the argument is still being assembled. |
| passive-voice | editing | Worth addressing only once the structure is stable and the argument chain is committed. Before that, a passive construction may be rewritten, cut, or promoted to active when the structural logic shifts. |
| asset-validity | publishing | Irrelevant until content and links are committed. |
| lard-factor | editing | Sentence-level compression is premature during drafting and unproductive during revising. |

`address_when` is not the stage at which a concern *first appears*. Passive voice appears during drafting. It is *relevant* during drafting. But addressing it during drafting is premature — the sentence may not survive revision. `address_when` is the earliest stage at which fixing the concern represents genuinely stable, non-wasted work.

This is also why `writing_stage` (D7) and `address_when` (D8) are different dimensions. D7 is descriptive: which stages is this concern active or observable at. D8 is prescriptive: when should you act on it.

---

## prerequisite_for — The Dependency Relationship

The triage principle is not only an editorial heuristic. It is a structural fact about how the layers depend on each other. This fact can be encoded as a typed relationship edge:

> **structural coherence** `prerequisite_for` **mechanical editing**

The meaning: the target concern (mechanical editing) cannot be usefully addressed until this concern (structural coherence) is resolved. Editing mechanics in a structurally broken document produces false confidence at best and wasted effort always.

Other examples:

- **audience-awareness** `prerequisite_for` **genre selection** — you cannot choose the right form until you know the reader
- **hierarchy-of-purpose** `prerequisite_for` **rhetorical-arrangement** — you cannot arrange your argument until you know what the argument is for
- **coherence** `prerequisite_for` **lard-factor** — sentence-level compression is premature until the argument chain is established

The `prerequisite_for` edge is directed: A `prerequisite_for` B means A must be resolved before B is worth addressing. It does not mean they cannot be observed simultaneously — both passive voice and structural incoherence can be detected in the same read. It means B should not be *acted on* until A is stable.

---

## The Dependency Graph

When `prerequisite_for` edges are followed, the lexicon forms a dependency graph. The five layers appear as a high-level topological ordering of that graph: Functional concerns (Layer 1) are prerequisites for Structural concerns (Layer 3), which are prerequisites for Mechanical concerns (Layer 4), which are prerequisites for Editorial concerns (Layer 5).

But the graph is finer-grained than the five layers. Within the Structural layer, some concerns are prerequisites for others: establishing the hierarchy-of-purpose is a prerequisite for rhetorical arrangement, which is a prerequisite for evaluating section unity.

This is why the layer ordering is not arbitrary. It is not a ranking by importance, difficulty, or frequency. It is a topological order of the dependency graph. Concerns closer to the root (Functional) must be stable before concerns further from the root (Editorial) can be evaluated validly.

---

## Why This Matters for Editing Workflows

In practice, the triage principle answers a question that editing guides rarely address directly: **when should I stop editing at one level and move to another?**

The answer is: move down (toward lower layers, toward mechanics) only when you are confident the higher layer is stable enough that the lower-layer work will not be thrown away. You don't need perfection at Layer 3 before beginning Layer 4 editing. You need *stability* — the argument chain is committed, the document organization is settled, the major structural revisions are done.

For a short piece (a 500-word article), this threshold is reached quickly. For a long piece (a technical manual, a thesis), each major section may need its own triage sequence before the whole is structurally stable.

---

## The Cascade Direction

Triage sequencing addresses concerns top-down. But concerns *fail* bottom-up: a systemic Mechanical failure (pervasive nominalization across a long document) can produce a Structural failure (the agent-action relationship is obscured throughout, coherence collapses).

This upward cascade is different from the triage ordering. It says: when a lower-layer failure is severe and systemic, it produces a higher-layer symptom that the higher-layer diagnosis will name but cannot fix. Fixing the structural incoherence requires going down to the mechanical source.

The `cascade_threshold` field on a concept encodes this: it describes the severity at which a lower-layer concern becomes a higher-layer problem. For nominalization: an isolated instance is a word-level fix; a systemic pattern of nominalization obscuring agent chains across a passage is a structural coherence failure.

For the full taxonomy of cascade conditions and cross-layer relationships, see [[category-boundaries]].
