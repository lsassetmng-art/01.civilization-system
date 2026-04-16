# ============================================================
# MBO LOCK AND REOPEN POLICY
# ============================================================

status: canonical
application: Mbo
layer: policy
owner: Boss
prepared_by: Zero

purpose:
Defines lock policy and exceptional reopen policy.

default_policy:
- final confirmation creates lock
- locked records are immutable in normal business operation
- ERP transmission is downstream from lock, not a substitute for lock

reopen_policy:
- reopen is exceptional
- reopen is not part of standard user operation
- reopen requires governed process
- reopen reason must be recorded
- reopen actor must be specially authorized
- reopen history must remain auditable

reopen_effect_scope:
- if reopen is approved, state changes from finalized to evaluation_drafted only
- transferred records require additional governance before any reopen
- reopened records must never silently erase prior confirmation history

calibration_policy_relation:
- calibration does not automatically unlock finalized records
- calibration records are separate from ordinary editing
- any score change after confirmation requires governed reopen or governed override process

