---
title: "Response Code (Field 039)"
description: "A two-character code returned by the issuer or switch indicating the disposition of the transaction. The single most important field in any response message."
also_known_as:
  - resp code
  - action code
  - decline code
classification:
  taxonomy: iso8583
  field_id: "039"
  data_type: an
  format: fixed
  max_length: 2
relationships:
  related_to:
    - field-038
tags: [lexicon, taxonomy:iso8583, domain:payments, iso8583:field]
---

# Response Code (Field 039)

A two-character code returned by the issuer or switch indicating the disposition of the transaction. The single most important field in any response message.

| Code | Meaning |
|---|---|
| 00 | Approved |
| 01 | Refer to card issuer |
| 05 | Do not honor |
| 12 | Invalid transaction |
| 13 | Invalid amount |
| 14 | Invalid card number |
| 41 | Lost card, pick up |
| 43 | Stolen card, pick up |
| 51 | Insufficient funds |
| 54 | Expired card |
| 55 | Incorrect PIN |
| 57 | Transaction not permitted to cardholder |
| 61 | Exceeds withdrawal amount limit |
| 62 | Restricted card |
| 65 | Exceeds withdrawal frequency limit |
| 91 | Issuer or switch inoperative |
| 96 | System malfunction |

Response codes are scheme-specific: Visa, Mastercard, and
Amex publish their own extended tables. The codes above follow
the base ISO 8583 specification; acquirers may receive
scheme-proprietary codes in practice.

Terminals must never display raw response codes to cardholders —
they must be translated to cardholder-friendly messages.