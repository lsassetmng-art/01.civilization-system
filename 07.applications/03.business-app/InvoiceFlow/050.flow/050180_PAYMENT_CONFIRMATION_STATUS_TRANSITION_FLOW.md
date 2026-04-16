# ============================================================
# PAYMENT CONFIRMATION STATUS TRANSITION FLOW
# ============================================================

status: canonical
layer: flow
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines payment confirmation state transitions.

payment_confirmation_status_codes:
- UNCONFIRMED
- BANK_MATCH_CANDIDATE
- BANK_MATCH_CONFIRMED
- MANUAL_CONFIRMED
- PARTIAL_CONFIRMED
- DIFFERENCE_FOUND
- RECEIPT_ISSUED
- CLOSED

transitions:

- from: UNCONFIRMED
  to:
  - BANK_MATCH_CANDIDATE
  - MANUAL_CONFIRMED
  conditions:
  - bank candidate appears or manual confirmation is entered

- from: BANK_MATCH_CANDIDATE
  to:
  - BANK_MATCH_CONFIRMED
  - DIFFERENCE_FOUND
  - PARTIAL_CONFIRMED
  - UNCONFIRMED
  conditions:
  - operator confirms, rejects, or returns candidate

- from: BANK_MATCH_CONFIRMED
  to:
  - RECEIPT_ISSUED
  - CLOSED
  conditions:
  - receipt is issued or payment handling is complete

- from: MANUAL_CONFIRMED
  to:
  - RECEIPT_ISSUED
  - CLOSED
  - DIFFERENCE_FOUND
  - PARTIAL_CONFIRMED
  conditions:
  - amount comparison result and receipt action determine state

- from: PARTIAL_CONFIRMED
  to:
  - RECEIPT_ISSUED
  - CLOSED
  - DIFFERENCE_FOUND
  conditions:
  - partial payment handling proceeds

- from: DIFFERENCE_FOUND
  to:
  - MANUAL_CONFIRMED
  - BANK_MATCH_CONFIRMED
  - PARTIAL_CONFIRMED
  - CLOSED
  conditions:
  - difference is resolved or case is administratively closed

- from: RECEIPT_ISSUED
  to:
  - CLOSED
  conditions:
  - no further payment confirmation action remains

- from: CLOSED
  to:
  - none

rules:
- ambiguous bank candidate must not auto-transition to confirmed
- receipt issuance requires confirmed payment
- confirmation source must remain traceable
