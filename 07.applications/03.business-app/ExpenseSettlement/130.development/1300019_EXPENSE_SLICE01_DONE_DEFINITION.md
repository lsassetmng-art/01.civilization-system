# ============================================================
# EXPENSE SLICE01 DONE DEFINITION
# ============================================================

status: canonical
layer: development
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

purpose:
Defines when slice_01_foundation_flow can be treated as done,
without describing implementation code.

slice_01_done_definition:
slice_01 is done only when canonical business meaning is preserved
across the locked first implementation slice.

done_conditions:

  report_item_core:
    - draft report can be created
    - report can be listed and opened
    - item can be created and edited
    - report/item relations remain correct

  receipt_metadata_flow:
    - receipt metadata can be attached to item
    - receipt state visibility is present
    - evidence-required visibility is present

  submit_flow:
    - submit validation works against canonical rules
    - submit action changes state correctly
    - blocked submit remains explainable

  approval_flow:
    - approval queue exists
    - approve / return / reject work
    - approval history append is visible

  finance_flow:
    - finance queue exists
    - mark_ready_for_erp works
    - mark_policy_blocked works
    - mark_evidence_defect works
    - finance history append is visible

  erp_skeleton_flow:
    - ERP publication request can be recorded
    - ERP result can be registered
    - ERP state projection is visible
    - ERP failure visibility exists

  governance_and_runtime:
    - state transition enforcement works
    - authority enforcement works
    - major audit-visible actions append correctly

not_done_if:
- state meanings are collapsed
- approval/finance/ERP meanings are blurred
- authority is bypassed
- major actions happen with no trace
- slice scope grows without explicit re-lock

