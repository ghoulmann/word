---
title: "Card Acceptor ID Code (Field 042)"
description: "A 15-character identifier assigned by the acquirer to the merchant (card acceptor). The primary merchant identifier in clearing and settlement."
also_known_as:
  - merchant ID
  - MID
  - card acceptor ID
classification:
  taxonomy: iso8583
  field_id: "042"
  data_type: ans
  format: fixed
  max_length: 15
relationships:
  related_to:
    - field-041
    - field-043
    - field-018
tags: [lexicon, taxonomy:iso8583, domain:payments, iso8583:field]
---

# Card Acceptor ID Code (Field 042)

A 15-character identifier assigned by the acquirer to the merchant (card acceptor). The primary merchant identifier in clearing and settlement.

The merchant ID (MID) is assigned at merchant onboarding and
remains constant across all terminals at a merchant location
(unlike [[field-041|Terminal ID]] which is terminal-specific).

MIDs appear on cardholder statements, chargeback documentation,
and scheme reporting. A merchant with multiple locations typically
has one MID per location, or one MID per brand/concept.

Scheme compliance requires that the MID and [[field-043|merchant
name/location]] accurately reflect the entity processing
transactions — misrepresenting the merchant is a scheme violation
(transaction laundering).