# ============================================================
# EXPENSE FIRST IMPLEMENTATION SLICE LOCK
# ============================================================

status: canonical
layer: development
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

purpose:
Locks the first implementation slice so implementation can begin
without expanding scope implicitly.

first_implementation_slice_name:
slice_01_foundation_flow

slice_goal:
Build the smallest serious flow that preserves the canonical business meaning.

in_scope:
- report draft creation
- report list/basic detail
- item create/edit
- receipt attachment metadata flow
- submit
- approval queue basic flow
- approve / return / reject basic flow
- finance review queue basic flow
- mark_ready_for_erp / mark_policy_blocked / mark_evidence_defect
- ERP publication request skeleton
- ERP publication result registration skeleton
- major state transition visibility
- audit-visible major actions

explicitly_in_scope_state_meanings:
- submit_state
- approval_state
- finance_state
- erp_state

deferred_to_later_slices:
- advanced candidate inbox behaviors beyond basic linkage
- advanced template management UX
- advanced export variants
- advanced reminder tuning
- advanced duplicate heuristics refinement
- advanced OCR integration behavior
- advanced settlement completion automation

slice_rule:
Do not add unrelated breadth during slice_01.
Protect canonical meaning before feature expansion.

