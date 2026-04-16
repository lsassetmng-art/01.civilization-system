# ============================================================
# RECEIPT STATUS TRANSITION FLOW
# ============================================================

status: canonical
layer: flow
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines receipt issuance state transitions.

receipt_status_codes:
- NOT_ISSUED
- ISSUE_READY
- ISSUED
- REISSUED
- VOID

transitions:

- from: NOT_ISSUED
  to:
  - ISSUE_READY
  conditions:
  - confirmed payment exists
  - receipt policy allows issuance

- from: ISSUE_READY
  to:
  - ISSUED
  - VOID
  conditions:
  - receipt is issued or issuance is cancelled/blocked

- from: ISSUED
  to:
  - REISSUED
  - VOID
  conditions:
  - reissue or void policy action occurs

- from: REISSUED
  to:
  - REISSUED
  - VOID
  conditions:
  - further reissue or void occurs according to policy

- from: VOID
  to:
  - none

rules:
- receipt requires confirmed payment
- reissue must preserve linkage to original payment and prior receipt
- void is terminal
