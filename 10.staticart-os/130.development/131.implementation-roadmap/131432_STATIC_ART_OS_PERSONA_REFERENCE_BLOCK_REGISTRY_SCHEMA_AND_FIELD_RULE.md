# ============================================================
# STATIC ART OS PERSONA REFERENCE BLOCK REGISTRY SCHEMA AND FIELD RULE
# ============================================================

status: active-exact-registry
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

purpose:
Define the canonical registry schema and field semantics for actual
block tracking.

registry_record_fields:
  identity_fields:
    - block_id
    - package_id
    - block_title
    - scope_type

  lifecycle_fields:
    - current_status
    - current_stage
    - approval_state
    - predecessor_block_id_if_any
    - successor_block_id_if_any

  storage_fields:
    - current_storage_path
    - review_packet_path_if_any
    - execution_link_note_path_if_any
    - linked_execution_run_dir_if_any

  dependency_fields:
    - prerequisite_blocks
    - prerequisite_packages
    - close_gate_status
    - blocking_issue_flag

  review_fields:
    - latest_review_outcome
    - latest_review_note_path_if_any
    - boundary_check_status
    - contradiction_scan_status_if_any

  evidence_fields:
    - evidence_expected
    - evidence_present
    - post_run_summary_path_if_any

field_rules:
- current_status must be a single canonical value
- current_stage must match storage topology stage
- linked_execution_run_dir_if_any stays empty unless actual execution occurred
- predecessor/successor lineage must never point in circles
- evidence_present must not be marked yes without concrete path or explicit note

recommended_status_values:
- draft
- review_ready
- approved
- returned_for_fix
- superseded
- executed
- archived_reference_only

registry_rule:
- registry is a control surface, not a substitute for detailed evidence
- registry must remain consistent with storage path and approval state
