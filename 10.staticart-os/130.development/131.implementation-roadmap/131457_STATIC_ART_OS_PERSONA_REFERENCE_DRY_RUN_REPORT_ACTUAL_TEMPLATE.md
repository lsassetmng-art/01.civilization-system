# ============================================================
# STATIC ART OS PERSONA REFERENCE DRY RUN REPORT ACTUAL TEMPLATE
# ============================================================

status: active-actual-template
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

purpose:
Provide the concrete report shape for runner dry-run output.

dry_run_report_template:
  header:
    title:
      - Persona Reference Runner Dry Run Report
    generated_at:
    runner_id:
    runner_title:
    mode:
      - dry_run

  input_summary:
    - source_root
    - block_files_seen
    - ledger_rows_seen_if_any
    - queue_files_seen_if_any

  planned_actions_table:
    columns:
      - action_type
      - target_path
      - reason
      - would_write
    examples:
      - create_directory
      - create_seed_file
      - refresh_ledger
      - refresh_queue
      - refresh_index
      - report_only

  anomaly_table:
    columns:
      - severity
      - anomaly_type
      - related_block_id_if_any
      - detail
      - suggested_action

  summary_metrics:
    - planned_write_count
    - anomaly_count
    - critical_anomaly_count

  operator_note:
    - dry_run does not alter files
    - apply should only happen after review
