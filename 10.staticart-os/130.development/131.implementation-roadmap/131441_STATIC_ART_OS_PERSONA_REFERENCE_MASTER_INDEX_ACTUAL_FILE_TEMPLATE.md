# ============================================================
# STATIC ART OS PERSONA REFERENCE MASTER INDEX ACTUAL FILE TEMPLATE
# ============================================================

status: active-actual-template
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

purpose:
Provide the concrete human-readable file shape for the generated
Persona reference block master index.

recommended_actual_file:
  file_role:
    - top human navigation file under block index area

  recommended_sections:
    - header
    - generation metadata
    - summary metrics
    - by_package table
    - by_status table
    - by_dependency table
    - execution linkage table
    - anomaly summary
    - next operator hints

actual_template:
  header:
    title:
      - Persona Reference Block Master Index
    generated_at:
    generated_by:
    source_scope:
      - 132.operations/600.actual-blocks

  summary_metrics_table:
    columns:
      - metric
      - value
    rows_example:
      - total_blocks
      - draft_count
      - review_ready_count
      - approved_count
      - blocked_count
      - executed_count
      - superseded_count

  by_package_table:
    columns:
      - package_id
      - block_id
      - block_title
      - current_status
      - current_stage
      - approval_state
      - close_gate_status

  by_status_table:
    columns:
      - current_status
      - block_id
      - package_id
      - current_storage_path

  by_dependency_table:
    columns:
      - block_id
      - prerequisite_blocks
      - prerequisite_packages
      - blocking_issue_flag

  execution_linkage_table:
    columns:
      - block_id
      - current_status
      - linked_execution_run_dir_if_any
      - post_run_summary_path_if_any

  anomaly_summary:
    bullets:
      - status_vs_stage_mismatch_count
      - missing_execution_link_count
      - lineage_issue_count

  next_operator_hints:
    bullets:
      - highest priority review_ready item
      - highest priority executable approved item
      - blocked item needing attention first

template_rule:
- actual file should be readable in plain markdown
- file should summarize, not replace ledger detail
