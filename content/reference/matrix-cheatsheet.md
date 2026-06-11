---
title: Matrix Cheatsheet
description: Quick-reference table of all concepts across key classification dimensions — layer, address_when, determinism, and risk severity.
tags: [reference]
---

# Matrix Cheatsheet

Quick-reference table for the most frequently used classification dimensions. For full classification, see each concept's lexicon entry.

**Columns**: Layer (D1), Address When (D8), Determinism (D6), Risk Severity (D11 general-reader baseline)

| Concept | Layer | Address When | Determinism | Risk Severity |
|---|---|---|---|---|
| [[audience-awareness]] | functional | prewriting | risk-factor | functional |
| [[hierarchy-of-purpose]] | functional | prewriting | risk-factor | functional |
| [[genre]] | functional / editorial | prewriting | risk-factor | functional |
| [[topic-type]] | functional | prewriting | risk-factor | functional |
| [[asset-validity]] | functional / computational | publishing | rule-violation | functional |
| [[controlled-vocabulary]] | functional / computational | prewriting | rule-violation | functional |
| [[tokenomics]] | computational | drafting | risk-factor | functional |
| [[chunking]] | computational | prewriting | risk-factor | functional |
| [[coherence]] | structural | revising | risk-factor | functional |
| [[cohesion]] | structural | editing | risk-factor | functional |
| [[unity]] | structural | revising | risk-factor | functional |
| [[boundary-control]] | structural | revising | risk-factor | functional |
| [[rhetorical-arrangement]] | structural | revising | risk-factor | functional |
| [[rhetorical-mode]] | structural | prewriting | risk-factor | functional |
| [[informal-fallacy]] | structural | revising | rule-violation | credibility |
| [[ethos-pathos-logos]] | structural | prewriting | risk-factor | functional |
| [[nominalization]] | mechanical / structural | editing | risk-factor | functional |
| [[passive-voice]] | mechanical | editing | risk-factor | functional |
| [[lard-factor]] | mechanical | editing | risk-factor | functional |
| [[weak-words]] | mechanical | editing | risk-factor | functional |
| [[grammar-syntax]] | mechanical | editing | rule-violation | credibility |
| [[punctuation]] | mechanical | editing | rule-violation | credibility |
| [[orthography]] | mechanical | editing | rule-violation | credibility |
| [[readability-metrics]] | mechanical | editing | risk-factor | functional |
| [[e-prime]] | editorial | drafting | philosophy | cosmetic |
| [[house-style]] | editorial | editing | rule-violation | cosmetic |
| [[tone-voice-cadence]] | editorial | editing | risk-factor | functional |
| [[information-design]] | editorial | editing | risk-factor | functional |
| [[localization]] | editorial | editing | risk-factor | functional |
| [[terminology-consistency]] | editorial | editing | rule-violation | functional |
| [[plain-language]] | mechanical / structural / editorial | prewriting | philosophy | functional |
| [[paramedic-method]] | mechanical | editing | rule-violation | cosmetic |
| [[cognitive-overload]] | mechanical / structural | revising | risk-factor | functional |

---

## Audience Sensitivity Quick Reference

Concepts with elevated risk for specific reader profiles (D13):

| Concept | Elevated for |
|---|---|
| [[nominalization]] | second-language-learner, cognitive-disability |
| [[passive-voice]] | second-language-learner, cognitive-disability |
| [[lard-factor]] | second-language-learner, cognitive-disability, domain-novice |
| [[weak-words]] | second-language-learner, domain-novice |
| [[plain-language]] | second-language-learner, cognitive-disability, domain-novice |
| [[readability-metrics]] | second-language-learner, cognitive-disability, domain-novice |
| [[information-design]] | low-vision, cognitive-disability, domain-novice |
| [[localization]] | second-language-learner, cross-cultural |
| [[audience-awareness]] | second-language-learner, cognitive-disability, domain-novice, cross-cultural |
| [[controlled-vocabulary]] | (system-level) |
| [[terminology-consistency]] | second-language-learner, domain-novice |
| [[cognitive-overload]] | second-language-learner, cognitive-disability, domain-novice |

---

## Relationship Types Quick Reference

| Type | Meaning | Determinism |
|---|---|---|
| `subtype_of` | This is a specific kind of the target | — |
| `aspect_of` | This is a measurable dimension of the target | — |
| `impediment_to` | This deterministically obstructs the target | deterministic |
| `increases_risk_of` | This raises the probability of the target | probabilistic |
| `controlled_by` | This is governed or constrained by the target | — |
| `prerequisite_for` | Target cannot be usefully addressed until this is resolved | triage |
| `measured_by` | The target quantifies this concept (produces a score) | — |
| `operationalized_as` | The target makes this concept concrete or detectable | — |
| `commonly_confused_with` | The target is frequently mistaken for this concept | — |
| `addresses` | This is a technique or practice that corrects the target | — |
| `produces` | Applying or violating this concept generates the target | — |
| `part_of` | This is a structural component of the target | — |
| `related_to` | Non-directional association; no more specific type fits | — |

---

## The Triage Sequence

```
prewriting     → audience-awareness, hierarchy-of-purpose, genre, topic-type
               ↓ (functional concerns stable)
revising       → coherence, unity, boundary-control, rhetorical-arrangement
               ↓ (structural concerns stable)
editing        → nominalization, passive-voice, grammar, punctuation, style
               ↓ (mechanical and editorial concerns stable)
publishing     → asset-validity, final localization, link check
```

Do not move to the next row until the row above is stable. See [[triage-sequencing]].
