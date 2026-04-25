# ============================================================
# STATIC ART OS PERSONA REFERENCE CONSISTENCY AUDIT RUNNER ACTUAL TEMPLATE
# ============================================================

status: active-actual-template
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

purpose:
Provide the concrete authoring template for the consistency audit
runner over storage/ledger/queue/lineage coherence.

recommended_runner_identity:
  runner_id:
    - PR-RUN-AUDIT-01
  runner_title:
    - consistency audit runner
  runner_mode_support:
    - audit_only
    - dry_run

actual_template:
  runner_header:
    runner_id:
    runner_title:
    purpose:
    supported_modes:
      - audit_only
      - dry_run

  preconditions:
    - storage topology exists
    - ledger exists or is refreshable
    - queue derivation rules understood
    - operator understands audit is non-mutating

  audit_targets:
    - stage placement
    - status and queue membership
    - lineage predecessor/successor coherence
    - execution linkage presence
    - duplicate canonical rows
    - approval-state anomalies

  touched_scope:
    - audit report only
    - anomaly note only
    - no canonical repair in audit_only mode

  no_touch_scope:
    - authored block source files
    - registry ledger in audit_only mode
    - queue files in audit_only mode
    - execution evidence contents

  steps:
    - scan current storage and ledger
    - compare stage/status/path
    - compare queue membership with ledger
    - compare lineage fields for coherence
    - emit severity-ranked anomalies
    - emit recommended repairs only

  expected_outputs:
    - consistency audit report
    - anomaly list
    - recommended action list

  failure_handling:
    - stop on unreadable canonical inputs
    - report incomplete scan explicitly
    - do not mark system healthy when audit scope is partial

  safe_stop_or_rollback:
    - audit_only writes reports only
    - recommended repairs remain suggestions until separately approved
