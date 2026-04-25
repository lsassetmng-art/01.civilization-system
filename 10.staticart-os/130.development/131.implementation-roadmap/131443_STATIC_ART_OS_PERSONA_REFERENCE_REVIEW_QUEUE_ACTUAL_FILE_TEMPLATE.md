# ============================================================
# STATIC ART OS PERSONA REFERENCE REVIEW QUEUE ACTUAL FILE TEMPLATE
# ============================================================

status: active-actual-template
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

purpose:
Provide the concrete file shape for the generated review queue.

recommended_actual_file:
  file_role:
    - operator review queue
    - focus on items needing approval or re-review

actual_template:
  header:
    title:
      - Persona Reference Review Queue
    generated_at:
    queue_rule:
      - includes review_ready and returned_for_fix items only

  summary_metrics_table:
    columns:
      - metric
      - value
    rows_example:
      - review_ready_count
      - returned_for_fix_count
      - boundary_sensitive_count

  queue_table:
    columns:
      - priority_rank
      - block_id
      - package_id
      - block_title
      - current_status
      - approval_state
      - prerequisite_blocks
      - boundary_check_status
      - latest_review_note_path_if_any
      - current_storage_path

  operator_note:
    bullets:
      - review boundary-sensitive items first
      - do not execute directly from review queue
      - returned_for_fix items should retain lineage visibility

template_rule:
- review queue should surface what needs human attention now
