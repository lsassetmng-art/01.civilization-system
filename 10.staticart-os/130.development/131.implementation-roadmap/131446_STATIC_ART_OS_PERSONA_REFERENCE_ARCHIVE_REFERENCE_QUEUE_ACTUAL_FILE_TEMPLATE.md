# ============================================================
# STATIC ART OS PERSONA REFERENCE ARCHIVE REFERENCE QUEUE ACTUAL FILE TEMPLATE
# ============================================================

status: active-actual-template
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

purpose:
Provide the concrete file shape for the generated archive-reference queue.

recommended_actual_file:
  file_role:
    - lineage/navigation queue for superseded or executed-reference-only blocks

actual_template:
  header:
    title:
      - Persona Reference Archive Reference Queue
    generated_at:
    queue_rule:
      - includes superseded blocks and executed lineage references not active for new execution

  summary_metrics_table:
    columns:
      - metric
      - value
    rows_example:
      - executed_reference_count
      - superseded_count
      - archived_reference_only_count

  queue_table:
    columns:
      - block_id
      - package_id
      - current_status
      - predecessor_block_id_if_any
      - successor_block_id_if_any
      - linked_execution_run_dir_if_any
      - current_storage_path

  operator_note:
    bullets:
      - archive reference queue is for traceability, not new execution
      - lineage should remain visible after supersession

template_rule:
- archive queue should preserve navigation without confusing active and inactive blocks
