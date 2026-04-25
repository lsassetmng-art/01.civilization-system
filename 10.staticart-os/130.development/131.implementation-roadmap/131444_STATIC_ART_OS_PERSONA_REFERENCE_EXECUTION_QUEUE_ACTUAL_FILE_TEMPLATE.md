# ============================================================
# STATIC ART OS PERSONA REFERENCE EXECUTION QUEUE ACTUAL FILE TEMPLATE
# ============================================================

status: active-actual-template
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

purpose:
Provide the concrete file shape for the generated execution queue.

recommended_actual_file:
  file_role:
    - operator execution queue
    - focus on approved blocks whose prerequisites are closed

actual_template:
  header:
    title:
      - Persona Reference Execution Queue
    generated_at:
    queue_rule:
      - includes approved blocks with acceptable prerequisite closure

  summary_metrics_table:
    columns:
      - metric
      - value
    rows_example:
      - executable_now_count
      - approved_but_waiting_count
      - high_risk_runtime_blocks_count

  queue_table:
    columns:
      - priority_rank
      - block_id
      - package_id
      - block_title
      - current_status
      - approval_state
      - close_gate_status
      - prerequisite_blocks
      - current_storage_path
      - rollback_or_safe_stop_note_if_any

  operator_note:
    bullets:
      - never execute from draft or review_ready
      - confirm evidence workspace before execution
      - confirm rollback/safe stop awareness for runtime-facing blocks

template_rule:
- execution queue should contain only execution-candidate items
