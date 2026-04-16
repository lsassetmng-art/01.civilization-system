# ============================================================
# PHASE 05 IMPLEMENTATION INSTRUCTION
# IF-PHASE-05 Collection Management
# ============================================================

status: canonical
layer: implementation
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

phase_code: IF-PHASE-05
phase_name: Collection Management

purpose:
Implements overdue handling,
collection action recording,
priority collection visibility,
and customer outstanding visibility
as first-class operational functions.

# ============================================================
# 1. PHASE GOAL
# ============================================================

goal:
Enable operators to manage unpaid and overdue invoices
inside InvoiceFlow without leaving the application.

meaning_of_done:
- overdue items become visible
- collection dashboard becomes usable
- collection detail becomes usable
- collection actions can be recorded
- next action and promised payment dates can be managed
- priority collection flag and reason visibility are usable
- customer outstanding summary is visible

# ============================================================
# 2. TARGET DESIGN SOURCES
# ============================================================

target_design_sources:
- 020.architecture/020130_COLLECTION_MANAGEMENT_ARCHITECTURE.md
- 030.model/030180_COLLECTION_ACTION_MODEL.md
- 030.model/030190_CUSTOMER_OUTSTANDING_SUMMARY_MODEL.md
- 030.model/030310_COLLECTION_ACTION_PHYSICAL_MODEL.md
- 030.model/030340_CUSTOMER_OUTSTANDING_SUMMARY_PHYSICAL_MODEL.md
- 040.runtime/040150_COLLECTION_PRIORITY_RUNTIME.md
- 050.flow/050150_COLLECTION_FOLLOW_UP_FLOW.md
- 050.flow/050190_COLLECTION_STATUS_TRANSITION_FLOW.md
- 060.integration/060220_RECORD_COLLECTION_ACTION_EXACT_PAYLOAD.md
- 090.interface/090150_COLLECTION_DASHBOARD_INTERFACE.md
- 080.policy/080130_COLLECTION_PRIORITY_POLICY.md
- 070.operations/070110_COLLECTION_OPERATIONS_STANDARD.md
- 070.operations/070160_AUDIT_EVENT_LEDGER.md

# ============================================================
# 3. BACKEND TASKS
# ============================================================

backend_tasks:
- implement overdue detection/update logic
- implement collection dashboard read API
- implement collection detail read API
- implement record collection action API
- implement next_action_date persistence
- implement promised_payment_date persistence
- implement escalation_required_flag persistence
- update collection_status_code according to action outcomes
- expose priority flag and priority rank/reason in read payloads
- expose customer outstanding summary in read payloads
- write COLLECTION_ACTION_RECORDED audit event
- write COLLECTION_ESCALATED audit event when escalation occurs

backend_required_payload_fields:
- collection_status_code
- overdue_days
- outstanding_amount
- next_action_date
- promised_payment_date
- priority_collection_flag
- priority_rank_code or priority_reason_summary
- customer outstanding totals where relevant

backend_business_rules:
- overdue invoices must not disappear from collection scope silently
- resolved collection state must be explicit
- promised payment must remain traceable
- escalation must remain traceable
- priority visibility must be explainable to operator

backend_forbidden:
- do not hide overdue work because no notification fired
- do not infer collection resolution without explicit status change
- do not overwrite history destructively
- do not make priority opaque to the operator

# ============================================================
# 4. DATA TASKS
# ============================================================

data_tasks:
- create collection_action table if not already created
- create customer_outstanding_summary table or summary view if not already created
- connect collection_action to invoice_case
- persist action_type_code
- persist response_summary
- persist next_action_date
- persist promised_payment_date
- persist escalation_required_flag
- persist/update customer outstanding aggregates by customer and currency
- index next_action_date and action_date
- index customer outstanding priority and overdue totals

data_integrity_focus:
- collection history must remain additive and traceable
- customer outstanding summary must remain company-scoped
- overdue values must remain non-negative
- summary and detail should align by currency scope

data_forbidden:
- no destructive replacement of action history
- no company-less summary rows
- no hidden cross-currency aggregation without explicit rule

# ============================================================
# 5. FRONTEND TASKS
# ============================================================

frontend_tasks:
- implement collection dashboard
- implement collection detail screen
- display overdue list
- display collection due list
- display priority queue
- display dunning history/action history
- display next action date clearly
- display promised payment date clearly
- display escalation state clearly
- display customer outstanding summary
- support action entry form for collection actions
- keep priority and overdue facts visible on phone/tablet

frontend_ui_requirements:
- operator must understand what to do next from dashboard
- overdue days must be visible without opening deep detail where possible
- collection detail must show target summary above history
- priority reason or rank must be understandable
- collection action entry should be fast for day-to-day use

frontend_forbidden:
- do not bury next_action_date
- do not hide overdue days below low-priority content
- do not present customer outstanding in ambiguous currency form
- do not make collection detail desktop-only

# ============================================================
# 6. TEST TASKS
# ============================================================

test_tasks:
- overdue item appears in collection dashboard
- collection action record success
- next action date persistence
- promised payment date persistence
- escalation flag persistence
- collection status transition correctness
- priority flag visibility
- customer outstanding summary visibility
- audit event write for collection action
- audit event write for escalation

minimum_test_matrix:
- overdue monitoring
- follow-up required
- promised state
- escalated state
- resolved state
- ui next-action visibility
- customer summary by currency visibility

# ============================================================
# 7. REVIEW TASKS
# ============================================================

review_tasks:
- review collection workflow realism with actual overdue handling
- review priority rank/reason usefulness
- review dashboard usefulness on phone/tablet
- review customer outstanding clarity
- review action history completeness
- review escalation semantics

review_focus:
- collection should feel operationally actionable, not just report-like
- operators should not miss next_action_date
- priority display should drive work ordering without confusion

# ============================================================
# 8. PHASE EXIT CRITERIA
# ============================================================

exit_criteria:
- overdue invoices are visible in collection dashboard
- operator can record collection actions
- next action and promised payment dates are visible and stored
- escalation can be recorded and surfaced
- priority collection visibility works
- customer outstanding summary works
- collection status transitions behave correctly
- audit events exist for collection action and escalation

# ============================================================
# 9. EXPLICIT NON-GOALS FOR THIS PHASE
# ============================================================

non_goals:
- bank transaction import
- bank candidate confirmation
- ERP reflection
- saved filters
- advanced analytics beyond operational summary

# ============================================================
# 10. HANDOFF STATEMENT
# ============================================================

handoff_statement:
This phase is complete only when unpaid work becomes operationally manageable,
not merely visible,
and when collection history and next actions are reliable enough
for daily follow-up use.
