---
title: "Transaction Amount (Field 004)"
description: "The amount of the transaction in the currency specified by Field 049, expressed in the currency's minor unit (cents, pence, etc.) with no decimal point."
also_known_as:
  - amount
  - transaction value
classification:
  taxonomy: iso8583
  field_id: "004"
  data_type: n
  format: fixed
  max_length: 12
relationships:
  related_to:
    - field-006
    - field-049
    - field-054
tags: [lexicon, taxonomy:iso8583, domain:payments, iso8583:field]
---

# Transaction Amount (Field 004)

The amount of the transaction in the currency specified by Field 049, expressed in the currency's minor unit (cents, pence, etc.) with no decimal point.

Amounts in ISO 8583 are always integers in the currency's minor
unit. USD 12.50 is transmitted as `000000001250`. The currency
and its implicit decimal position are defined by [[field-049]].

For pre-authorizations (hotel check-in, car rental), Field 004
carries the estimated amount. The final settled amount may differ
and is captured in a separate completion message.

[[field-006]] carries the same amount converted to the
cardholder's billing currency when dynamic currency conversion
applies.