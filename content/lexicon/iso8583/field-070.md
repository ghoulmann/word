---
title: "Network Management Information Code (Field 070)"
description: "Identifies the function of a network management message (MTI 0800/0810). Specifies operations such as sign-on, sign-off, echo test, and key exchange."
also_known_as:
  - network code
  - NMI code
classification:
  taxonomy: iso8583
  field_id: "070"
  data_type: n
  format: fixed
  max_length: 3
relationships:
  {}
tags: [lexicon, taxonomy:iso8583, domain:payments, iso8583:field]
---

# Network Management Information Code (Field 070)

Identifies the function of a network management message (MTI 0800/0810). Specifies operations such as sign-on, sign-off, echo test, and key exchange.

| Code | Function |
|---|---|
| 001 | Sign-on |
| 002 | Sign-off |
| 101 | Master key download |
| 121 | PIN key change |
| 301 | Echo test |
| 302 | Cut-over |

Network management messages using Field 070 are sent as
[[mti-0800]] and acknowledged with MTI 0810 (Network Management Response). Unlike
cardholder transaction messages, they do not carry PAN or
amount data — they operate at the session or link level.

Sign-on (code 001) must succeed before cardholder transactions
are processed. A failed sign-on typically indicates a key
mismatch or host unavailability.