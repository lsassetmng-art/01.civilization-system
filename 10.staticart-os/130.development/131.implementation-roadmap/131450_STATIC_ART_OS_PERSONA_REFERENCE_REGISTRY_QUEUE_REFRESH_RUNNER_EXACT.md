# ============================================================
# STATIC ART OS PERSONA REFERENCE REGISTRY QUEUE REFRESH RUNNER EXACT
# ============================================================

status: active-exact-design
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

purpose:
Define the exact behavior of the runner that refreshes registry/index/
queue files from current block storage and metadata.

refresh_inputs:
- current block files under stage directories
- current ledger file if present
- review outcome notes if present
- execution linkage notes if present

refresh_outputs:
- refreshed registry ledger
- refreshed review queue
- refreshed execution queue
- refreshed blocked queue
- refreshed archive reference queue
- refreshed master index
- refresh report

refresh_algorithm_order:
  1:
    - discover current block files by stage directory
  2:
    - resolve block identity and canonical stage
  3:
    - validate or reconstruct ledger row set
  4:
    - derive queue files from ledger + stage + gate status
  5:
    - derive master index from ledger + queue views
  6:
    - emit refresh report

refresh_rules:
- ledger is refreshed before queue files
- queue files are refreshed before master index
- unresolved anomalies remain visible in report
- refresh should not silently invent missing evidence linkage
- refresh may preserve manually curated notes only when explicitly declared safe

minimum_refresh_report_metrics:
- total_blocks_seen
- ledger_rows_written
- review_queue_count
- execution_queue_count
- blocked_queue_count
- archive_reference_queue_count
- anomaly_count
- stage_status_mismatch_count
- lineage_issue_count

refresh_runner_judgement:
- refresh runner exists to keep control artifacts synchronized without guesswork
