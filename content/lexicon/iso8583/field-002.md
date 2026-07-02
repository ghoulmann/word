---
title: "Primary Account Number (Field 002)"
description: "The payment card number that identifies the cardholder account at the issuing institution. The PAN encodes the issuer, account, and a check digit (Luhn algorithm)."
also_known_as:
  - PAN
  - card number
  - account number
classification:
  taxonomy: iso8583
  field_id: "002"
  data_type: n
  format: LLVAR
  max_length: 19
relationships:
  related_to:
    - field-014
    - field-035
    - field-049
tags: [lexicon, taxonomy:iso8583, domain:payments, iso8583:field]
---

# Primary Account Number (Field 002)

The payment card number that identifies the cardholder account at the issuing institution. The PAN encodes the issuer, account, and a check digit (Luhn algorithm).

The PAN is the primary identifier for a cardholder account. Its
structure is defined by ISO/IEC 7812:

- **Issuer Identification Number (IIN/BIN)**: first 6–8 digits,
  identifying the card scheme and issuing institution
- **Account number**: variable-length individual account identifier
- **Check digit**: final digit, validated by the Luhn algorithm

PANs are highly sensitive PII and must be masked in logs and
displays (typically showing only the last four digits). Storage
of full PANs is governed by PCI DSS requirements.

[[field-035|Track 2 Data]] contains a truncated encoding of the
PAN for magnetic stripe transactions. [[field-014|Expiration Date]]
is validated alongside the PAN for card-present and card-not-present
transactions.