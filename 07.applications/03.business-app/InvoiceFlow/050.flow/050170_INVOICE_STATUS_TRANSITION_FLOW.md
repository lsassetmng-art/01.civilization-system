# ============================================================
# INVOICE STATUS TRANSITION FLOW
# ============================================================

status: canonical
layer: flow
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines invoice lifecycle state transitions.

invoice_status_codes:
- DRAFT
- PDF_READY
- SENT_REQUESTED
- SENT
- PAYMENT_WAITING
- PARTIALLY_PAID
- PAID
- OVERDUE
- CLOSED
- CANCELLED

transitions:

- from: DRAFT
  to:
  - PDF_READY
  - CANCELLED
  conditions:
  - required invoice fields are valid
  - totals and due date are valid

- from: PDF_READY
  to:
  - SENT_REQUESTED
  - CANCELLED
  conditions:
  - invoice PDF exists

- from: SENT_REQUESTED
  to:
  - SENT
  - CANCELLED
  conditions:
  - delivery request is accepted or cancelled

- from: SENT
  to:
  - PAYMENT_WAITING
  - CANCELLED
  conditions:
  - invoice has been sent and is active

- from: PAYMENT_WAITING
  to:
  - PARTIALLY_PAID
  - PAID
  - OVERDUE
  - CANCELLED
  conditions:
  - payment result or due-date event changes state

- from: PARTIALLY_PAID
  to:
  - PAID
  - OVERDUE
  - CANCELLED
  conditions:
  - remaining amount is resolved or due-date event changes state

- from: OVERDUE
  to:
  - PARTIALLY_PAID
  - PAID
  - CLOSED
  - CANCELLED
  conditions:
  - payment or administrative resolution changes state

- from: PAID
  to:
  - CLOSED
  conditions:
  - payment handling is complete
  - no further open collection state remains

- from: CLOSED
  to:
  - none

- from: CANCELLED
  to:
  - none

rules:
- FRONT_LOCAL invoice remains FRONT_LOCAL in all states
- ERP_MASTER invoice remains ERP_MASTER in all states
- cancelled state is terminal
- closed state is terminal
