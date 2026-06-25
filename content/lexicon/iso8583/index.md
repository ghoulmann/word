---
title: ISO 8583 — Financial Transaction Messages
description: >
  Fields, message type identifiers (MTIs), and data elements defined by
  ISO 8583, the international standard for financial transaction
  card-originated messages. Covers authorization, financial, reversal,
  and network management message flows.
tags: [lexicon, taxonomy:iso8583, domain:payments]
---

# ISO 8583 — Financial Transaction Messages

ISO 8583 defines the message format and communication flow for card payment
transactions between acquirers and issuers. It specifies Message Type
Identifiers (MTIs) for each transaction class and up to 128 (or 192 in
extended versions) data elements carried in bitmapped fields.

## Message Type Identifiers

- [[mti-0100|Authorization Request (0100)]]
- [[mti-0110|Authorization Response (0110)]]
- [[mti-0200|Financial Transaction Request (0200)]]
- [[mti-0210|Financial Transaction Response (0210)]]
- [[mti-0400|Reversal Request (0400)]]
- [[mti-0800|Network Management Request (0800)]]

## Data Fields

- [[field-002|Field 002: Primary Account Number]]
- [[field-003|Field 003: Processing Code]]
- [[field-004|Field 004: Transaction Amount]]
- [[field-007|Field 007: Transmission Date and Time]]
- [[field-011|Field 011: System Trace Audit Number]]
- [[field-014|Field 014: Expiration Date]]
- [[field-018|Field 018: Merchant Category Code]]
- [[field-022|Field 022: Point of Service Entry Mode]]
- [[field-035|Field 035: Track 2 Data]]
- [[field-037|Field 037: Retrieval Reference Number]]
- [[field-038|Field 038: Authorization Identification Response]]
- [[field-039|Field 039: Response Code]]
- [[field-041|Field 041: Card Acceptor Terminal ID]]
- [[field-042|Field 042: Card Acceptor ID Code]]
- [[field-049|Field 049: Currency Code, Transaction]]
- [[field-055|Field 055: ICC Data]]
- [[field-070|Field 070: Network Management Information Code]]
