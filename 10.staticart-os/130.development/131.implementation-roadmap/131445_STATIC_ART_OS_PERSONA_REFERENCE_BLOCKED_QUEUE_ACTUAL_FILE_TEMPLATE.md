# ============================================================
# STATIC ART OS PERSONA REFERENCE BLOCKED QUEUE ACTUAL FILE TEMPLATE
# ============================================================

status: active-actual-template
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

purpose:
Provide the concrete file shape for the generated blocked queue.

recommended_actual_file:
  file_role:
    - operator blocked queue
    - focus on unresolved blockers, gate issues, and boundary ambiguities

actual_template:
  header:
    title:
      - Persona Reference Blocked Queue
    generated_at:
    queue_rule:
      - includes blocks whose prerequisites, blockers, or boundary checks are unresolved

  summary_metrics_table:
    columns:
      - metric
      - value
    rows_example:
      - blocked_count
      - blocker_flag_count
      - boundary_issue_count
      - contradiction_issue_count

  queue_table:
    columns:
      - priority_rank
      - block_id
      - package_id
      - block_title
      - blocking_issue_flag
      - close_gate_status
      - boundary_check_status
      - contradiction_scan_status_if_any
      - latest_review_note_path_if_any
      - current_storage_path

  operator_note:
    bullets:
      - blocked queue must be checked before assuming execution queue is safe
      - unresolved boundary ambiguity should remain blocked, not downgraded casually

template_rule:
- blocked queue should make unresolved gating causes explicit
