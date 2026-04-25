# ============================================================
# STATIC ART OS PERSONA REFERENCE REGISTRY LEDGER FILE TEMPLATE EXACT
# ============================================================

status: active-exact-template
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

purpose:
Provide the exact template for the registry ledger file.

registry_ledger_template:
  header:
    title:
      - Persona Reference Block Registry Ledger
    generated_at:
    generated_by:

  canonical_columns:
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

  validation_expectation:
    - one block_id appears once as current canonical row
    - current_stage matches storage topology
    - current_status matches queue placement
    - linked execution path present only if execution occurred

template_rule:
- ledger is the canonical operational record
- queues and index should be derivable from the ledger plus storage checks
