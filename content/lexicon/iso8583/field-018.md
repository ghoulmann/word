---
title: "Merchant Category Code (Field 018)"
description: "A four-digit ISO 18245 code classifying the merchant's business type. Used by issuers for transaction controls, rewards programs, and fraud scoring."
also_known_as:
  - MCC
  - merchant type
  - SIC code
classification:
  taxonomy: iso8583
  field_id: "018"
  data_type: n
  format: fixed
  max_length: 4
relationships:
  related_to:
    - field-042
tags: [lexicon, taxonomy:iso8583, domain:payments, iso8583:field]
---

# Merchant Category Code (Field 018)

A four-digit ISO 18245 code classifying the merchant's business type. Used by issuers for transaction controls, rewards programs, and fraud scoring.

The MCC is assigned by the card scheme to the merchant at
onboarding. Common categories include:

| MCC | Category |
|---|---|
| 5411 | Grocery stores and supermarkets |
| 5812 | Eating places and restaurants |
| 5541 | Service stations (gas) |
| 4111 | Transportation — local |
| 7011 | Hotels and motels |

Issuers use the MCC for:
- **Spending controls**: blocking transactions at certain merchant types
- **Rewards**: calculating cashback or points multipliers
- **Fraud models**: flagging unusual merchant-category patterns
- **Interchange**: determining the applicable interchange rate