---
title: "Transmission Date and Time (Field 007)"
description: "The date and time the message was transmitted, in UTC/GMT, formatted as MMDDhhmmss (10 digits). Used for reconciliation and duplicate detection."
also_known_as:
  - GMT date/time
  - transmission timestamp
classification:
  taxonomy: iso8583
  field_id: "007"
  data_type: n
  format: fixed
  max_length: 10
relationships:
  related_to:
    - field-011
    - field-012
    - field-013
tags: [lexicon, taxonomy:iso8583, domain:payments, iso8583:field]
---

# Transmission Date and Time (Field 007)

The date and time the message was transmitted, in UTC/GMT, formatted as MMDDhhmmss (10 digits). Used for reconciliation and duplicate detection.

Field 007 is always in UTC regardless of the merchant or terminal
time zone. Local transaction time is carried in [[field-012]] and
[[field-013]] separately.

The combination of [[field-011|STAN]] and transmission date/time
provides a practically unique transaction identifier for a given
acquirer, used in dispute resolution and reconciliation matching.