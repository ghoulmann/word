---
title: House Style
description: The codified set of conventions a publication, organization, or project uses to standardize usage, formatting, and editorial choices — resolved once so writers don't re-decide each time.
also_known_as:
  - style guide
  - editorial style
  - brand voice guide
wordnet:
  term: style guide
  definitions:
    - "a manual that gives rules for spelling, punctuation, and capitalization in a document"
  synonyms:
    - style manual
    - editorial guide
  related_forms:
    - style
classification:
  layer: editorial
  stage: post-compositional
  scale: document-level
  concern_type: stylistic
  evaluator: [human-copy-editor, automated]
  determinism: rule-violation
  writing_stage: [editing, publishing]
  address_when: editing
  engineering_stage: [communicate]
  impact: [author-credibility, reader-trust]
  risk_severity: cosmetic
  responsible_role: [copy-editor, publisher]
relationships:
  controlled_by: genre
  related_to: [tone-voice-cadence, terminology-consistency, punctuation, orthography]
  operationalized_as: terminology-consistency
diagnostic_question: >
  Does this text comply with the applicable style guide in all matters
  the guide specifies — punctuation, capitalization, number formatting,
  citation format, abbreviations?
evaluation_tools:
  - Style guide compliance check (manual or Vale-configured linter)
  - Copyediting pass against specified guide (Chicago, AP, APA, MLA, or house-specific)
tags: [lexicon, layer:editorial, writing-stage:editing, concern-type:stylistic]
---

# House Style

House style is the set of codified editorial conventions that a publication or organization applies consistently. It resolves the arbitrary-but-contested choices that every document faces: Oxford comma or not? Headline case or sentence case? Percent sign or spelled out? US or UK spelling? 1980s or 1980's?

These choices are not objectively right or wrong — they are decided once and enforced consistently. The value is not in any particular choice but in the consistency: readers stop noticing the conventions, which means they stop noticing inconsistency, which means they can focus on the content.

## What House Style Governs

- **Punctuation**: Oxford comma, serial comma, em-dash vs. en-dash vs. hyphen, quotation mark placement
- **Capitalization**: job titles, product names, section headings, acronym expansion
- **Numbers**: spell out vs. numerals; date formats; decimal formatting
- **Abbreviations and acronyms**: when to define, whether to use periods
- **Citations and references**: Chicago, AP, APA, MLA, or organization-specific
- **Spelling variants**: American vs. British; preferred spellings for contested words
- **Voice and tone defaults**: first person or third person; active or passive as default; hedging conventions

## House Style and Terminology Consistency

[[Terminology-consistency]] — using terms uniformly throughout a document or system — is a content-level complement to house style's form-level conventions. House style says "use 'internet' lowercase"; terminology consistency says "use 'user' rather than 'end user' or 'customer' throughout this document."

## When House Style Matters Most

House style matters most when multiple writers contribute to the same document or publication, and when documents are read as part of a larger corpus (a documentation system, a journal). A single author writing a single document has implicit internal consistency; a team writing a suite of documents needs explicit style standards.

House style violations are typically `cosmetic` in risk severity — a reader notices the inconsistency as a minor friction, not a comprehension barrier. In formal contexts (legal, academic, regulatory), violations may affect `credibility`.

## Common Style Guides

- **Chicago Manual of Style**: publishing, humanities, general
- **AP Stylebook**: journalism, news
- **APA**: academic psychology and social sciences
- **MLA**: academic humanities
- **ACS, AMA, AIP**: scientific disciplines
- **Microsoft Writing Style Guide**: software documentation
- **Google Developer Documentation Style Guide**: developer documentation
