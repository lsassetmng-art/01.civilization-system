# ============================================================
# STATIC ART OS PERSONA REFERENCE OPERATOR START SEQUENCE FOR RUNNERS
# ============================================================

status: active-exact-sequence
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

purpose:
Define the recommended first-use sequence for the runner family.

operator_start_sequence:
  step_1_read_baseline:
    - storage topology exact
    - registry schema and field rule
    - queue transition rule
    - generation policy
    - actual queue template set

  step_2_initialize_if_missing:
    - run initialization runner in dry_run
    - inspect planned directories/files
    - run initialization runner in apply only if acceptable

  step_3_refresh_control_plane:
    - run refresh runner in dry_run
    - inspect counts and anomalies
    - run refresh runner in apply only if acceptable

  step_4_audit_consistency:
    - run audit runner in audit_only
    - inspect critical/medium issues
    - do not trust queue order until critical issues are resolved

  step_5_operate_normally:
    - review queue first
    - execution queue second
    - blocked queue before assuming nothing is wrong
    - archive queue only for lineage/reference

operator_start_rule:
- initialize first, refresh second, audit third
- do not start from manual queue editing as the normal path
