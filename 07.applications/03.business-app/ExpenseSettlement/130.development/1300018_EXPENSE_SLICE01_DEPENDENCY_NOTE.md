# ============================================================
# EXPENSE SLICE01 DEPENDENCY NOTE
# ============================================================

status: canonical
layer: development
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

purpose:
Defines slice_01 dependency logic before implementation begins.

dependency_map:

  report_item_core_depends_on:
    - exact payload contract
    - physical data model meaning
    - authority design

  receipt_flow_depends_on:
    - report_item_core
    - evidence policy baseline
    - file policy baseline

  submit_flow_depends_on:
    - report_item_core
    - receipt_flow
    - state transition design
    - validation baseline

  approval_flow_depends_on:
    - submit_flow
    - route matrix baseline
    - authority design

  finance_flow_depends_on:
    - approval_flow
    - finance reason code baseline
    - finance review policy detail

  erp_skeleton_flow_depends_on:
    - finance_flow
    - ERP request/result contract
    - state transition design

  audit_flow_depends_on:
    - all major actions above
    - audit/history design

dependency_rule:
When blocked, resolve the dependency layer instead of bypassing it.

