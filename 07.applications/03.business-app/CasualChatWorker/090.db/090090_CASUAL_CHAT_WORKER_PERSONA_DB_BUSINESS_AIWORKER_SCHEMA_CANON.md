# CasualChatWorker Persona DB business / aiworker Schema Canon

status: active
generated_at: 20260425_205110

## 1. business

business owns:

- contract
- pricing
- payment
- entitlement/free-ticket
- usage
- session facts
- rental history

## 2. aiworker

aiworker owns:

- AI worker entity
- AI worker model
- series
- individual identity
- personality
- style
- conversation control
- safety boundary
- app eligibility

## 3. Correct Relationship

CasualChatWorker business rows may reference aiworker ids.

CasualChatWorker business rows must not duplicate aiworker canon.

