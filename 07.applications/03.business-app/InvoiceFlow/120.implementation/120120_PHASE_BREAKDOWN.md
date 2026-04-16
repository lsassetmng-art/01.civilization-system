# ============================================================
# PHASE BREAKDOWN
# ============================================================

status: canonical
layer: implementation
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation phases for InvoiceFlow.

phases:

- phase_code: IF-PHASE-01
  phase_name: Authority And Base Model
  scope:
  - invoice authority boundary
  - invoice_case base persistence
  - invoice_line base persistence
  - status code handling
  - company scope enforcement

- phase_code: IF-PHASE-02
  phase_name: Front Invoice Core
  scope:
  - create FRONT_LOCAL invoice
  - edit front invoice before send
  - invoice list
  - invoice detail
  - invoice PDF generation
  - send request registration

- phase_code: IF-PHASE-03
  phase_name: Manual Payment Confirmation
  scope:
  - manual payment confirmation
  - difference handling
  - partial payment handling
  - invoice status update from payment result

- phase_code: IF-PHASE-04
  phase_name: Receipt Issuance
  scope:
  - receipt issuance
  - receipt detail
  - receipt PDF
  - receipt reissue with audit trail

- phase_code: IF-PHASE-05
  phase_name: Collection Management
  scope:
  - overdue detection
  - collection dashboard
  - collection detail
  - collection action history
  - priority collection flag
  - customer outstanding summary

- phase_code: IF-PHASE-06
  phase_name: Bank Match Flow
  scope:
  - bank transaction import
  - candidate list
  - bank match confirmation
  - ambiguous match review

- phase_code: IF-PHASE-07
  phase_name: ERP Reflection
  scope:
  - ERP_MASTER invoice reference
  - payment-result reflection request
  - reflection result retrieval
  - retry and audit visibility

- phase_code: IF-PHASE-08
  phase_name: Refinement And Operator Optimization
  scope:
  - saved filters
  - dashboard refinements
  - performance indexes
  - device optimization
  - multilingual and multicurrency edge-case review
