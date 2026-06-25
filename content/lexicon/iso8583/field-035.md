---
title: "Track 2 Data (Field 035)"
description: "The data read from the magnetic stripe's Track 2, containing the PAN, expiration date, and service code. Transmitted for card-present magnetic stripe transactions."
also_known_as:
  - magnetic stripe data
  - track data
classification:
  taxonomy: iso8583
  field_id: "035"
  data_type: z
  format: LLVAR
  max_length: 37
relationships:
  related_to:
    - field-002
    - field-014
tags: [lexicon, taxonomy:iso8583, domain:payments, iso8583:field]
---

# Track 2 Data (Field 035)

The data read from the magnetic stripe's Track 2, containing the PAN, expiration date, and service code. Transmitted for card-present magnetic stripe transactions.

Track 2 data has the structure:
`PAN = Expiration Date Service Code Discretionary Data`

- **PAN**: same as [[field-002]]
- **Expiration date**: YYMM, same as [[field-014]]
- **Service code**: three digits defining card usage rules
  (international/domestic, PIN required, etc.)
- **Discretionary data**: issuer-specific, may include CVV/CVC

Track 2 data is classified as sensitive authentication data (SAD)
under PCI DSS and must never be stored after transaction authorization,
even in encrypted form. Its presence indicates a card-present transaction
and generally lowers interchange rates and fraud liability.