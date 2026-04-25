# ============================================================
# STATIC ART OS PERSONA REFERENCE QUEUE REFRESH REPORT ACTUAL FILE TEMPLATE
# ============================================================

status: active-actual-template
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

purpose:
Provide the concrete file shape for the queue refresh/sync report.

recommended_actual_file:
  file_role:
    - one report per refresh run
    - surfaces anomalies and counts

actual_template:
  header:
    title:
      - Persona Reference Queue Refresh Report
    generated_at:
    generated_by:
    source_root:
      - 132.operations/600.actual-blocks

  refresh_summary_table:
    columns:
      - metric
      - value
    rows_example:
      - total_blocks_seen
      - ledger_rows_written
      - review_queue_count
      - execution_queue_count
      - blocked_queue_count
      - archive_reference_queue_count
      - anomaly_count

  anomaly_table:
    columns:
      - anomaly_type
      - block_id
      - detail
      - suggested_action

  lineage_issue_table:
    columns:
      - block_id
      - predecessor_block_id_if_any
      - successor_block_id_if_any
      - issue_detail

  storage_consistency_table:
    columns:
      - block_id
      - current_status
      - current_stage
      - current_storage_path
      - consistency_result

  operator_note:
    bullets:
      - anomalies should be fixed before relying on queue order
      - refresh report does not replace canonical ledger

template_rule:
- refresh report should be short enough to scan quickly and specific enough to act on
