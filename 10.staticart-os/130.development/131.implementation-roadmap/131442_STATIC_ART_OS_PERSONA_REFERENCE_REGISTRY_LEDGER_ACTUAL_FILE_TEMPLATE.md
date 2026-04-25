# ============================================================
# STATIC ART OS PERSONA REFERENCE REGISTRY LEDGER ACTUAL FILE TEMPLATE
# ============================================================

status: active-actual-template
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

purpose:
Provide the concrete canonical ledger file shape for Persona reference
actual blocks.

recommended_actual_file:
  file_role:
    - canonical operational ledger
    - source for queue derivation and index summarization

actual_template:
  header:
    title:
      - Persona Reference Block Registry Ledger
    generated_at:
    generated_by:
    canonicality_note:
      - this ledger is the operational source for queue/index derivation

  ledger_table:
    columns:
      - block_id
      - package_id
      - block_title
      - scope_type
      - current_status
      - current_stage
      - approval_state
      - current_storage_path
      - predecessor_block_id_if_any
      - successor_block_id_if_any
      - prerequisite_blocks
      - prerequisite_packages
      - close_gate_status
      - blocking_issue_flag
      - latest_review_outcome_if_any
      - latest_review_note_path_if_any
      - boundary_check_status
      - contradiction_scan_status_if_any
      - linked_execution_run_dir_if_any
      - post_run_summary_path_if_any
      - evidence_expected
      - evidence_present

  validation_notes:
    bullets:
      - one current row per block_id
      - stage must match storage path
      - status must match queue placement
      - lineage must not be cyclic

template_rule:
- actual ledger file should be machine-sortable enough for refresh logic
- actual ledger file should still remain human-auditable
