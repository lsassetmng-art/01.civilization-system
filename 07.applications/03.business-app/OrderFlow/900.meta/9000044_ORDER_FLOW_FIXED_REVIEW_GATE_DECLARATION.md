# ============================================================
# ORDER FLOW FIXED REVIEW GATE DECLARATION
# ============================================================

status: fixed-review-gate-declaration
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Declares the fixed review gate conditions before execution planning.

fixed_review_gate:
  required_before_execution:
    - Sato review completed
    - Boss go decision exists
    - structural blockers resolved or explicitly accepted
    - target schema confirmed
    - migration packaging confirmed
    - RLS claim mapping confirmed

declaration:
  - no execution planning should bypass this gate
  - no candidate SQL should be treated as final before this gate is passed

