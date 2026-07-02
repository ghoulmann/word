---
title: "Processing Code (Field 003)"
description: "A six-digit code defining the type of transaction being requested: purchase, cash advance, refund, balance inquiry, etc. The first two digits indicate the transaction type; the second two indicate the account type debited; the third two indicate the account type credited."
also_known_as:
  - proc code
  - transaction type code
classification:
  taxonomy: iso8583
  field_id: "003"
  data_type: n
  format: fixed
  max_length: 6
relationships:
  related_to:
    - field-002
    - field-004
tags: [lexicon, taxonomy:iso8583, domain:payments, iso8583:field]
---

# Processing Code (Field 003)

A six-digit code defining the type of transaction being requested: purchase, cash advance, refund, balance inquiry, etc. The first two digits indicate the transaction type; the second two indicate the account type debited; the third two indicate the account type credited.

| Digits 1–2 | Transaction type |
|---|---|
| 00 | Purchase / goods and services |
| 01 | Cash withdrawal (ATM) |
| 09 | Purchase with cashback |
| 20 | Refund / credit |
| 28 | Balance inquiry |
| 30 | Available funds inquiry |

| Digits 3–4 / 5–6 | Account type |
|---|---|
| 00 | Default / unspecified |
| 10 | Savings |
| 20 | Checking / current |
| 30 | Credit |

The processing code drives business logic at both acquirer and
issuer: fee structures, authorization limits, and posting rules
all depend on the transaction type encoded here.