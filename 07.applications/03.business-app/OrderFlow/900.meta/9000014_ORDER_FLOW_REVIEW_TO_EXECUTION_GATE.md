# ============================================================
# ORDER FLOW REVIEW TO EXECUTION GATE
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Defines the gate from review stage to execution-planning stage.

gate_conditions:

  must_be_true:
    - Sato review completed
    - Boss go decision exists
    - unresolved structural blockers are closed or explicitly accepted
    - target schema confirmed
    - migration packaging confirmed
    - RLS claim strategy confirmed

  must_not_be_assumed:
    - draft SQL equals approved SQL
    - seed SQL equals production-safe SQL
    - candidate migration numbering equals final numbering

gate_result_when_passed:
  - OrderFlow may move from review-held design stage
    to execution-planning stage

gate_result_when_not_passed:
  - OrderFlow remains execution-held

