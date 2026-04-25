# ============================================================
# STATIC ART OS PERSONA REFERENCE CONSISTENCY AUDIT RUNNER EXACT
# ============================================================

status: active-exact-design
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

purpose:
Define the exact behavior of the consistency audit runner for block
storage, ledger, queue, and lineage coherence.

audit_targets:
- stage directory placement
- ledger current_status
- ledger current_stage
- queue membership
- lineage predecessor/successor coherence
- execution linkage presence
- duplicate current canonical records
- missing approval state where required

audit_checks:
  placement_check:
    - current_storage_path matches current_stage

  status_queue_check:
    - review_ready appears only in review queue
    - approved execution candidates appear only in execution queue or blocked queue
    - superseded/executed lineage appears only in archive reference queue

  lineage_check:
    - predecessor/successor references not cyclic
    - superseded block has visible successor when required

  execution_link_check:
    - executed status should have linked execution run dir when evidence is required

  canonical_record_check:
    - one block_id has one current canonical row only

audit_outputs:
- consistency audit report
- anomaly list
- repair suggestions only
- no silent mutation by audit-only mode

severity_levels:
- critical:
  - duplicate current canonical row
  - stage/status contradiction on active block
  - executed without required evidence linkage
- medium:
  - lineage missing successor/predecessor note
  - queue placement mismatch
- low:
  - missing optional note/reference

audit_runner_judgement:
- audit runner exists to reveal operational inconsistency before it becomes execution confusion
