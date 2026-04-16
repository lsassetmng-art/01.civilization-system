# ============================================================
# PHASE 01 TASK BREAKDOWN
# Authority And Base Model
# ============================================================

status: canonical
layer: implementation
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

phase_code: IF-PHASE-01

backend_tasks:
- define invoice_case repository and service boundary
- define invoice_line repository and service boundary
- enforce company scope in all read/write entry points
- enforce invoice_authority_type persistence
- enforce erp_link_eligibility persistence
- expose minimal invoice create/read APIs for FRONT_LOCAL
- expose invoice detail read API with authority fields

frontend_tasks:
- prepare invoice list base screen shell
- prepare invoice detail base screen shell
- render authority badge on invoice detail
- render ERP eligibility warning area
- support multilingual labels at screen root
- support multicurrency display formatting at screen root

data_tasks:
- create invoice_case table
- create invoice_line table
- create core indexes for invoice_case
- verify enum-like status field values
- verify unique handling for invoice_number_local

test_tasks:
- test company scope isolation
- test FRONT_LOCAL persistence
- test ERP_MASTER read visibility path
- test invalid authority write rejection
- test payment_due_date validation

review_tasks:
- review authority field completeness
- review invoice_case physical design alignment
- review API and DB field naming consistency

phase_completion_focus:
- authority boundary is visible and stored correctly
