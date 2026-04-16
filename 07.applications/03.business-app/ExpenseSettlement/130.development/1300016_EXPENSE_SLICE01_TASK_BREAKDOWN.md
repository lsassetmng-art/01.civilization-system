# ============================================================
# EXPENSE SLICE01 TASK BREAKDOWN
# ============================================================

status: canonical
layer: development
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

purpose:
Breaks down slice_01_foundation_flow into implementation-start tasks
without writing implementation code.

slice_01_name:
slice_01_foundation_flow

task_groups:

  group_01_core_object_flow:
    - draft report create
    - draft report list
    - report detail load
    - item create
    - item edit
    - item list inside report

  group_02_receipt_flow:
    - receipt attachment metadata accept
    - receipt list per item
    - receipt state visibility
    - evidence-required blocking visibility

  group_03_submit_flow:
    - submit validation
    - submit action
    - submit state projection
    - validation error surface

  group_04_approval_flow:
    - approval queue list
    - report review for approver
    - approve action
    - return action
    - reject action
    - approval history append

  group_05_finance_flow:
    - finance queue list
    - finance review
    - mark_ready_for_erp
    - mark_policy_blocked
    - mark_evidence_defect
    - finance history append

  group_06_erp_skeleton_flow:
    - ERP publication request create
    - ERP result registration
    - ERP state projection
    - ERP failure visibility

  group_07_audit_and_state_flow:
    - major audit event append
    - state transition enforcement
    - authority enforcement
    - cross-state rule enforcement

task_rule:
Do not expand slice_01 beyond these groups unless explicitly re-scoped.

