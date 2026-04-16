# ============================================================
# SCREEN LIST INTERFACE
# ============================================================

status: canonical
layer: interface
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines the full screen list and screen purpose.

screens:

- screen_id: IF-SCR-001
  screen_name: Login
  purpose:
  - authenticate user
  - resolve company scope
  - load role and permission context

- screen_id: IF-SCR-010
  screen_name: Dashboard
  purpose:
  - show today's invoice/payment/collection workload
  - show operational alerts
  - provide direct jump to urgent work

- screen_id: IF-SCR-020
  screen_name: Invoice List
  purpose:
  - search and filter invoices
  - show invoice authority and ERP eligibility
  - show payment/overdue status

- screen_id: IF-SCR-030
  screen_name: Invoice Detail
  purpose:
  - show invoice facts
  - show invoice PDF/send/payment/collection state
  - provide next-action entry points

- screen_id: IF-SCR-040
  screen_name: Create Front Invoice
  purpose:
  - create FRONT_LOCAL invoice
  - enter line items
  - generate invoice PDF

- screen_id: IF-SCR-050
  screen_name: ERP Master Invoice Reference
  purpose:
  - display ERP-master invoice facts
  - show ERP authority badge
  - support payment/collection follow-up

- screen_id: IF-SCR-060
  screen_name: Bank Matching
  purpose:
  - review imported bank transaction candidates
  - confirm payment from bank-linked route
  - resolve ambiguous matches

- screen_id: IF-SCR-070
  screen_name: Manual Payment Confirmation
  purpose:
  - confirm payment manually
  - support hand-delivery and equivalent cases
  - trigger receipt flow when allowed

- screen_id: IF-SCR-080
  screen_name: Collection Dashboard
  purpose:
  - show overdue workload
  - show priority collection queue
  - show customer outstanding summary

- screen_id: IF-SCR-090
  screen_name: Collection Detail
  purpose:
  - record dunning history
  - set next action
  - manage promise-to-pay and escalation

- screen_id: IF-SCR-100
  screen_name: Receipt Detail
  purpose:
  - show receipt facts
  - show linked invoice and payment
  - allow reissue when policy permits

- screen_id: IF-SCR-110
  screen_name: Settings
  purpose:
  - configure display and operation preferences
  - configure notification behavior
  - show connected services status

cross_screen_requirements:
- all screens support multilingual labels and messages
- all monetary displays preserve currency code/symbol policy
- all screens are available for iphone, android, pc, and tablet form factors
- invoice authority distinction must remain visible on critical screens
