---
title: "Currency Code, Transaction (Field 049)"
description: "The ISO 4217 numeric currency code for the transaction amount in Field 004. Three digits."
also_known_as:
  - currency code
  - transaction currency
classification:
  taxonomy: iso8583
  field_id: "049"
  data_type: n
  format: fixed
  max_length: 3
relationships:
  related_to:
    - field-004
tags: [lexicon, taxonomy:iso8583, domain:payments, iso8583:field]
---

# Currency Code, Transaction (Field 049)

The ISO 4217 numeric currency code for the transaction amount in Field 004. Three digits.

ISO 4217 numeric currency codes used in payments:

| Code | Currency |
|---|---|
| 840 | US Dollar (USD) |
| 978 | Euro (EUR) |
| 826 | Pound Sterling (GBP) |
| 392 | Japanese Yen (JPY) |
| 036 | Australian Dollar (AUD) |
| 124 | Canadian Dollar (CAD) |

The currency code determines the implicit decimal position.
JPY (392) has no minor unit (amounts are whole yen);
USD (840) has two decimal places (amounts in cents).

For dynamic currency conversion transactions, [[field-049]]
carries the transaction currency and Field 006 (Cardholder Billing Amount) carries
the cardholder billing currency amount.