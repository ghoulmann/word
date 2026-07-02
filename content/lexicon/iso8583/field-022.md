---
title: "Point of Service Entry Mode (Field 022)"
description: "Indicates how the PAN and PIN were captured at the point of sale. Drives fraud liability rules and interchange rates."
also_known_as:
  - POS entry mode
  - card entry mode
classification:
  taxonomy: iso8583
  field_id: "022"
  data_type: n
  format: fixed
  max_length: 3
relationships:
  related_to:
    - field-055
tags: [lexicon, taxonomy:iso8583, domain:payments, iso8583:field]
---

# Point of Service Entry Mode (Field 022)

Indicates how the PAN and PIN were captured at the point of sale. Drives fraud liability rules and interchange rates.

| Code | Entry method |
|---|---|
| 01 | Manual (key-entered) |
| 02 | Magnetic stripe read |
| 05 | Integrated circuit card (chip) read |
| 07 | Contactless (NFC) |
| 10 | Credential on file |
| 81 | E-commerce |
| 90 | Magnetic stripe — full track read |

The entry mode is one of the primary signals in fraud liability
shift rules. A chip-capable terminal processing a swipe transaction
may face increased chargeback liability compared to a chip read.

The third digit (PIN capture capability) indicates whether a PIN
pad is present and whether a PIN was captured.