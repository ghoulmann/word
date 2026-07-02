---
title: "Expiration Date (Field 014)"
description: "The expiration date of the payment card, formatted as YYMM. Validated by the issuer as part of card authentication."
also_known_as:
  - expiry date
  - card expiry
  - valid thru
classification:
  taxonomy: iso8583
  field_id: "014"
  data_type: n
  format: fixed
  max_length: 4
relationships:
  related_to:
    - field-002
    - field-035
tags: [lexicon, taxonomy:iso8583, domain:payments, iso8583:field]
---

# Expiration Date (Field 014)

The expiration date of the payment card, formatted as YYMM. Validated by the issuer as part of card authentication.

The expiration date is paired with [[field-002|PAN]] for basic
card validation. A card whose expiration date has passed should
be declined with response code `54` (Expired Card).

For magnetic stripe transactions, the expiration date is embedded
in [[field-035|Track 2 Data]] and may be extracted from there
rather than sent separately in Field 014.

Expiration dates are considered sensitive cardholder data under
PCI DSS when combined with the PAN.