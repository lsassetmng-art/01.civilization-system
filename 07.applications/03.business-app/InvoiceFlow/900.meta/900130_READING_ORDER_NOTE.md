# ============================================================
# READING ORDER NOTE
# ============================================================

status: canonical-meta
layer: meta
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Provides recommended reading order by use-case.

reading_orders:

- use_case: business review
  order:
  - 000_INVOICE_FLOW_OVERVIEW.md
  - 010.constitution/010_INVOICE_FLOW_CONSTITUTION.md
  - 020.architecture/020160_COMPETITIVE_POSITION_ARCHITECTURE.md
  - 080.policy/080110_INVOICE_AUTHORITY_POLICY.md
  - 080.policy/080150_COMPETITIVE_DIFFERENTIATION_POLICY.md
  - 900.meta/900050_DESIGN_CLOSURE_NOTE.md

- use_case: implementation start
  order:
  - 120.implementation/120110_IMPLEMENTATION_ROADMAP.md
  - 120.implementation/120120_PHASE_BREAKDOWN.md
  - 030.model/030270_DB_PHYSICAL_OVERVIEW_MODEL.md
  - 030.model/030280_INVOICE_CASE_PHYSICAL_MODEL.md
  - 050.flow/050170_INVOICE_STATUS_TRANSITION_FLOW.md
  - 060.integration/060180_CREATE_FRONT_INVOICE_EXACT_PAYLOAD.md
  - 060.integration/060190_CONFIRM_MANUAL_PAYMENT_EXACT_PAYLOAD.md
  - 060.integration/060210_ISSUE_RECEIPT_EXACT_PAYLOAD.md
  - 100.security/100140_EXCEPTION_AND_APPROVAL_BOUNDARY_SECURITY.md

- use_case: ui review
  order:
  - 090.interface/090_INVOICE_FLOW_INTERFACE.md
  - 090.interface/090110_SCREEN_LIST_INTERFACE.md
  - 090.interface/090120_DASHBOARD_INTERFACE.md
  - 090.interface/090130_INVOICE_DETAIL_INTERFACE.md
  - 090.interface/090140_PAYMENT_CONFIRMATION_INTERFACE.md
  - 090.interface/090150_COLLECTION_DASHBOARD_INTERFACE.md
  - 090.interface/090160_RECEIPT_INTERFACE.md

- use_case: final full reading
  order:
  - 00_INVOICE_FLOW_INTEGRATED.md
