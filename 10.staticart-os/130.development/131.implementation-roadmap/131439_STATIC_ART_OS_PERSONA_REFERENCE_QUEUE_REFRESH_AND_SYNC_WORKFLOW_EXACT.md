# ============================================================
# STATIC ART OS PERSONA REFERENCE QUEUE REFRESH AND SYNC WORKFLOW EXACT
# ============================================================

status: active-exact-workflow
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

purpose:
Define the exact workflow to refresh and sync the registry/index/queue files.

sync_workflow:
  step_1_collect_sources:
    - read authored block storage topology
    - read current ledger
    - read approval/review outcomes
    - read execution linkage notes if any

  step_2_validate_records:
    - ensure one current canonical record per block_id
    - ensure current_stage matches storage path
    - ensure current_status is valid
    - ensure lineage fields are coherent

  step_3_refresh_ledger:
    - update canonical ledger first
    - preserve predecessor/successor lineage
    - preserve evidence linkage fields

  step_4_refresh_queues:
    - derive review queue from review_ready and returned_for_fix
    - derive execution queue from approved plus closed prerequisites
    - derive blocked queue from unresolved blockers or gate issues
    - derive archive reference queue from superseded/executed lineage references

  step_5_refresh_master_index:
    - summarize by package
    - summarize by status
    - summarize by dependency
    - summarize execution linkage

  step_6_emit_refresh_report:
    - counts by status
    - queue counts
    - sync anomalies
    - missing storage path issues
    - lineage issues

sync_rule:
- ledger refresh comes before queue refresh
- queue refresh comes before index refresh
- anomalies should be surfaced, not silently ignored

sync_anomaly_examples:
- block status says approved but file lives in authoring-drafts
- executed status without linked execution run
- successor exists but predecessor not marked superseded
- review_ready item missing approval packet path when required

workflow_judgement:
- refresh/sync exists to keep operational truth coherent without manual guesswork
