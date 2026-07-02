---
title: "Card Acceptor Terminal ID (Field 041)"
description: "An eight-character identifier assigned by the acquirer to the physical or logical terminal where the transaction originated."
also_known_as:
  - terminal ID
  - TID
classification:
  taxonomy: iso8583
  field_id: "041"
  data_type: ans
  format: fixed
  max_length: 8
relationships:
  related_to:
    - field-042
tags: [lexicon, taxonomy:iso8583, domain:payments, iso8583:field]
---

# Card Acceptor Terminal ID (Field 041)

An eight-character identifier assigned by the acquirer to the physical or logical terminal where the transaction originated.

The terminal ID uniquely identifies a point-of-sale device within
the acquirer's network. Together with [[field-042|Card Acceptor ID
Code]] (merchant ID), it enables transaction routing, reporting,
and dispute resolution at the terminal level.

For e-commerce transactions without a physical terminal, a
logical terminal ID is assigned by the acquirer. Card-not-present
transactions must still populate Field 041 to comply with
scheme requirements.