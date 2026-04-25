# ============================================================
# STATIC ART OS PERSONA REFERENCE MASTER INDEX FILE TEMPLATE EXACT
# ============================================================

status: active-exact-template
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

purpose:
Provide the exact template for the concrete block master index file.

master_index_template:
  header:
    title:
      - Persona Reference Block Master Index
    generated_at:
    generated_by:
    scope:
      - Persona reference actual blocks only

  summary_metrics:
    - total_blocks
    - draft_count
    - review_ready_count
    - approved_count
    - blocked_count
    - executed_count
    - superseded_count

  section_by_package:
    columns:
      - block_id
      - block_title
      - current_status
      - current_stage
      - approval_state
      - close_gate_status
      - linked_execution_run_dir_if_any

  section_by_status:
    columns:
      - current_status
      - block_id
      - package_id
      - current_storage_path

  section_by_dependency:
    columns:
      - block_id
      - prerequisite_blocks
      - prerequisite_packages
      - blocking_issue_flag

  section_execution_linkage:
    columns:
      - block_id
      - current_status
      - linked_execution_run_dir_if_any
      - post_run_summary_path_if_any

template_rule:
- master index is human-readable first
- it should let an operator find current state and next action quickly
- it should not duplicate detailed evidence contents
