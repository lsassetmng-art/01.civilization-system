# ============================================================
# STATIC ART OS PERSONA REFERENCE BLOCK INDEX LEDGER AND STATUS TRACKING RULE
# ============================================================

status: active-exact-ledger-rule
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

purpose:
Define the index/ledger structure used to track actual blocks.

required_index_artifacts:
- block master index
- package to block mapping
- block status ledger
- review queue note
- execution linkage note if block has run

recommended_status_values:
- draft
- review_ready
- approved
- returned_for_fix
- superseded
- executed
- archived_reference_only

required_ledger_fields_per_block:
- block_id
- package_id
- current_stage
- current_status
- current_storage_path
- predecessor_block_id_if_any
- successor_block_id_if_any
- approval_state
- linked_execution_run_dir_if_any
- latest_review_note_if_any

status_tracking_rules:
- every block_id must have exactly one current_status in the ledger
- storage path and status must agree
- executed status should point to execution evidence path if execution occurred
- returned_for_fix and superseded should preserve lineage, not erase it
- archived_reference_only must still preserve where the active successor is

ledger_judgement:
- ledger exists so a later reviewer can understand stage and lineage without reading all block files
