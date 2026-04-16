# ============================================================
# COLLECTION STATUS TRANSITION FLOW
# ============================================================

status: canonical
layer: flow
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines collection lifecycle transitions.

collection_status_codes:
- NONE
- MONITORING
- FOLLOW_UP_REQUIRED
- COLLECTION_SCHEDULED
- CONTACTED
- PROMISED
- ESCALATED
- RESOLVED

transitions:

- from: NONE
  to:
  - MONITORING
  conditions:
  - invoice enters active unpaid monitoring scope

- from: MONITORING
  to:
  - FOLLOW_UP_REQUIRED
  - RESOLVED
  conditions:
  - overdue or risk fact appears, or payment resolves case

- from: FOLLOW_UP_REQUIRED
  to:
  - COLLECTION_SCHEDULED
  - RESOLVED
  conditions:
  - next action is planned or payment resolves case

- from: COLLECTION_SCHEDULED
  to:
  - CONTACTED
  - PROMISED
  - ESCALATED
  - RESOLVED
  conditions:
  - action outcome determines next state

- from: CONTACTED
  to:
  - PROMISED
  - COLLECTION_SCHEDULED
  - ESCALATED
  - RESOLVED
  conditions:
  - response or lack of response determines next state

- from: PROMISED
  to:
  - COLLECTION_SCHEDULED
  - ESCALATED
  - RESOLVED
  conditions:
  - promise kept, missed, or escalated

- from: ESCALATED
  to:
  - COLLECTION_SCHEDULED
  - RESOLVED
  conditions:
  - escalated handling continues or is resolved

- from: RESOLVED
  to:
  - none

rules:
- collection status is first-class and must not be skipped for overdue cases
- resolved is terminal
- priority queue may change without forcing a state change
