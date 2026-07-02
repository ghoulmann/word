---
title: Accessibility Compliance
description: Conformance to WCAG 2.1/2.2 success criteria at the publishing stage — alt text, contrast ratios, keyboard navigation, ARIA landmarks, and correct reading order for screen readers.
also_known_as: [WCAG compliance, a11y compliance, accessibility conformance]
classification:
  layer: functional
  stage: post-compositional
  scale: [document-level, system-level]
  concern_type: technical
  evaluator: [automated, human-technical-qa]
  determinism: rule-violation
  writing_stage: [publishing]
  address_when: publishing
  impact: [accessibility-technical, accessibility-presentation, accessibility-cognitive]
  risk_severity: functional
  responsible_role: [technical-qa, publisher, information-architect]
relationships:
  related_to: [rendering-fidelity, information-design]
  addressed_by: information-design
analogy:
  writing_concept: verifying published documentation meets WCAG Level AA success criteria
  engineering_equivalent: safety certification testing
  shared_property: both verify a system meets a defined external standard through systematic testing of the delivered artifact; both require testing output, not just auditing design
  failure_mode: documentation page passes design review but fails automated WCAG audit after rendering; product passes design spec but fails safety certification
tags: [lexicon, taxonomy:wqo, layer:functional, concern-type:technical]
---

# Accessibility Compliance

Accessibility compliance is the verification that published documentation meets the WCAG 2.1 (or 2.2) Level AA success criteria — the internationally recognized standard for web content accessibility. Unlike accessibility as a design value (addressed throughout authoring), accessibility compliance is a publishing-stage check: it verifies the rendered output, not the source content.

## Core WCAG criteria for documentation

**Perceivable**: All non-decorative images have descriptive alt text. Color is not the sole means of conveying information. Text contrast meets the 4.5:1 ratio for normal text, 3:1 for large text.

**Operable**: All content and functionality is accessible via keyboard alone. Focus order is logical and visible.

**Understandable**: Language is declared (`lang` attribute). Form inputs have labels. Error messages are descriptive.

**Robust**: HTML is valid. ARIA roles and attributes are used correctly. Content works with current assistive technologies.

## The rendering gap

Accessibility compliance requires testing rendered output, not source code. A Markdown file may be perfectly structured but produce an inaccessible page if the SSG renders headings without proper hierarchy, tables without row/column headers, or interactive components without keyboard event handlers. This is why accessibility compliance is a publishing concern, not just an authoring concern.

Automated validators (pa11y, axe-core, Lighthouse) catch the majority of WCAG conformance failures detectable without a human tester. Human testing with assistive technology remains necessary for complex interactive components.

**Engineering parallel:** Accessibility compliance maps to *safety certification testing* — both verify that a system meets a defined external standard through systematic testing of the delivered artifact; both require testing the output, not just auditing the design.
