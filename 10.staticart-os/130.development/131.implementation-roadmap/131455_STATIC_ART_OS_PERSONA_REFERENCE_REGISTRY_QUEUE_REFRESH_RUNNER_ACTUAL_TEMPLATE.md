# ============================================================
# STATIC ART OS PERSONA REFERENCE REGISTRY QUEUE REFRESH RUNNER ACTUAL TEMPLATE
# ============================================================

status: active-actual-template
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

purpose:
Provide the concrete authoring template for the refresh runner that
rebuilds ledger/queues/index from current block storage and metadata.

recommended_runner_identity:
  runner_id:
    - PR-RUN-REFRESH-01
  runner_title:
    - registry queue refresh runner
  runner_mode_support:
    - dry_run
    - apply

actual_template:
  runner_header:
    runner_id:
    runner_title:
    purpose:
    supported_modes:
      - dry_run
      - apply

  preconditions:
    - storage root exists
    - ledger/index template rules reviewed
    - queue derivation rules reviewed
    - operator understands ledger refresh precedes queue refresh

  touched_scope:
    - canonical registry ledger file
    - derived review queue file
    - derived execution queue file
    - derived blocked queue file
    - derived archive reference queue file
    - derived master index file
    - refresh report

  no_touch_scope:
    - authored block semantic contents
    - execution evidence contents
    - approval meaning
    - boundary semantics

  steps:
    - discover current block files by stage
    - resolve canonical row set
    - validate lineage and status coherence
    - derive queues from ledger + stage + gate fields
    - derive index from refreshed ledger and queues
    - emit anomalies in report

  expected_outputs:
    - refreshed ledger
    - refreshed queues
    - refreshed master index
    - refresh report with anomaly summary

  failure_handling:
    - stop on duplicate canonical row ambiguity if configured critical
    - stop on stage/status contradiction if apply would hide issue
    - do not silently normalize lineage conflict

  safe_stop_or_rollback:
    - dry_run emits intended writes only
    - apply should be idempotent on unchanged inputs
    - anomalies remain visible instead of being erased
