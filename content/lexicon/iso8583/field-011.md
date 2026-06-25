---
title: "System Trace Audit Number (Field 011)"
description: "A six-digit number assigned by the acquirer to uniquely identify a transaction within a processing day. The STAN is echoed back in the response and used for matching requests to responses."
also_known_as:
  - STAN
  - trace number
  - audit number
classification:
  taxonomy: iso8583
  field_id: "011"
  data_type: n
  format: fixed
  max_length: 6
relationships:
  related_to:
    - field-007
    - field-037
tags: [lexicon, taxonomy:iso8583, domain:payments, iso8583:field]
---

# System Trace Audit Number (Field 011)

A six-digit number assigned by the acquirer to uniquely identify a transaction within a processing day. The STAN is echoed back in the response and used for matching requests to responses.

The STAN is assigned at the originating terminal or acquirer
processor and must be unique per calendar day per institution.
It cycles from 000001 to 999999.

Unlike [[field-037|Retrieval Reference Number]], the STAN is
not globally unique — it is scoped to the acquirer. Both fields
are typically required for transaction matching in exception
handling and chargebacks.

The STAN must be preserved unchanged through the entire
transaction lifecycle, including reversals and completions.