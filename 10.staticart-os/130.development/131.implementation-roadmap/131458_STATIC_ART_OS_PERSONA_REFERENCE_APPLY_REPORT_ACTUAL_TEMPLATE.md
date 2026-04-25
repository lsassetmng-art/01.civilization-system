# ============================================================
# STATIC ART OS PERSONA REFERENCE APPLY REPORT ACTUAL TEMPLATE
# ============================================================

status: active-actual-template
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

purpose:
Provide the concrete report shape for runner apply output.

apply_report_template:
  header:
    title:
      - Persona Reference Runner Apply Report
    generated_at:
    runner_id:
    runner_title:
    mode:
      - apply

  write_summary_table:
    columns:
      - write_type
      - target_path
      - result
      - note
    examples:
      - created
      - refreshed
      - skipped_existing
      - skipped_due_to_anomaly
      - failed

  anomaly_table:
    columns:
      - severity
      - anomaly_type
      - related_block_id_if_any
      - detail
      - operator_action_needed

  summary_metrics:
    - files_written_count
    - files_refreshed_count
    - skipped_count
    - failed_count
    - anomaly_count

  operator_note:
    - apply result should be cross-checked with canonical ledger and queue views
    - failed or skipped critical writes should block trust in queue ordering
