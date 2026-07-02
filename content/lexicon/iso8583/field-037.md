---
title: "Retrieval Reference Number (Field 037)"
description: "A 12-character alphanumeric reference assigned by the acquirer to uniquely identify a transaction. Used as the primary key for chargebacks, disputes, and reconciliation."
also_known_as:
  - RRN
  - reference number
classification:
  taxonomy: iso8583
  field_id: "037"
  data_type: an
  format: fixed
  max_length: 12
relationships:
  related_to:
    - field-011
    - field-038
tags: [lexicon, taxonomy:iso8583, domain:payments, iso8583:field]
---

# Retrieval Reference Number (Field 037)

A 12-character alphanumeric reference assigned by the acquirer to uniquely identify a transaction. Used as the primary key for chargebacks, disputes, and reconciliation.

The RRN is assigned by the acquirer processor and must be unique
across all transactions for a given acquirer within a defined
time window (typically 12–18 months for chargeback purposes).

Unlike [[field-011|STAN]], the RRN is designed for external
reference — it appears on cardholder statements and is used
in dispute correspondence between cardholders, merchants,
acquirers, and issuers.

The first six characters conventionally encode the Julian date
and hour (YDDDHR), though formatting conventions vary by acquirer.