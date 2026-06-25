---
title: "Authorization Identification Response (Field 038)"
description: "A six-character code returned by the issuer on an approved authorization. Must be stored by the merchant and included in clearing and settlement."
also_known_as:
  - auth code
  - approval code
  - authorization code
classification:
  taxonomy: iso8583
  field_id: "038"
  data_type: an
  format: fixed
  max_length: 6
relationships:
  related_to:
    - field-037
    - field-039
tags: [lexicon, taxonomy:iso8583, domain:payments, iso8583:field]
---

# Authorization Identification Response (Field 038)

A six-character code returned by the issuer on an approved authorization. Must be stored by the merchant and included in clearing and settlement.

The authorization code is issuer-assigned and confirms that the
issuer approved the specific transaction. It is required in:

- Receipt printing (displayed to cardholder)
- Clearing messages (linking authorization to settlement)
- Chargeback responses (evidence of authorization)
- Reversal messages ([[field-038]] echoed back in [[mti-0400]])

Authorization codes are only present in response messages when
[[field-039|Response Code]] is `00` (approved). For declined
transactions, Field 038 is absent or empty.