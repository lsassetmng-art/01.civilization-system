# ============================================================
# IMPLEMENTATION START PACKAGE NOTE
# ============================================================

status: canonical-meta
layer: meta
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines the exact package to use when implementation begins.

implementation_start_package:
- 000_INVOICE_FLOW_OVERVIEW.md
- 000_INVOICE_FLOW_INDEX.md
- 020.architecture/020110_INVOICE_BOUNDARY_ARCHITECTURE.md
- 030.model/030270_DB_PHYSICAL_OVERVIEW_MODEL.md
- 030.model/030280_INVOICE_CASE_PHYSICAL_MODEL.md
- 030.model/030290_PAYMENT_CONFIRMATION_PHYSICAL_MODEL.md
- 030.model/030300_RECEIPT_ISSUE_PHYSICAL_MODEL.md
- 050.flow/050170_INVOICE_STATUS_TRANSITION_FLOW.md
- 050.flow/050180_PAYMENT_CONFIRMATION_STATUS_TRANSITION_FLOW.md
- 060.integration/060150_API_EXACT_PAYLOAD_OVERVIEW.md
- 060.integration/060180_CREATE_FRONT_INVOICE_EXACT_PAYLOAD.md
- 060.integration/060190_CONFIRM_MANUAL_PAYMENT_EXACT_PAYLOAD.md
- 060.integration/060210_ISSUE_RECEIPT_EXACT_PAYLOAD.md
- 100.security/100130_ACTION_PERMISSION_MATRIX_SECURITY.md
- 100.security/100140_EXCEPTION_AND_APPROVAL_BOUNDARY_SECURITY.md
- 120.implementation/120110_IMPLEMENTATION_ROADMAP.md
- 120.implementation/120120_PHASE_BREAKDOWN.md

note:
This package is enough to begin implementation without reopening major design meaning.
