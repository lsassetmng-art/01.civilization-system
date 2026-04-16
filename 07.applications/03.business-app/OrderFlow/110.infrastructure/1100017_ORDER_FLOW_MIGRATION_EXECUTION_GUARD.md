# ============================================================
# ORDER FLOW MIGRATION EXECUTION GUARD
# ============================================================

status: hold-guard
system: order-flow
owner: Boss
prepared_by: Zero

purpose:
Explicit execution guard for future migration packaging.

execution_guard:
  - migration packaging is not execution approval
  - candidate file breakdown is for planning only
  - do not package for real execution until:
    - Boss decision exists
    - Sato review is completed
    - target schema is confirmed
    - migration engine / repository placement is confirmed
    - RLS claim function strategy is confirmed

forbidden_until_approved:
  - applying candidate migration files to production
  - applying candidate migration files to shared staging without approval
  - treating candidate numbering as final official numbering

summary:
Packaging is planned.
Execution remains intentionally blocked.

