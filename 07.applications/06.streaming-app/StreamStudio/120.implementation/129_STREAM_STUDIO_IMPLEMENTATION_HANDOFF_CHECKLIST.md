# ============================================================
# STREAM STUDIO IMPLEMENTATION HANDOFF CHECKLIST
# ============================================================

status: handoff-checklist
layer: implementation-handoff
system: applications
application: StreamStudio
owner: Boss
prepared_by: Zero

purpose:
Provides the concrete implementation handoff checklist
for StreamStudio before real build work begins.

# ============================================================
# 1. HANDOFF GOAL
# ============================================================

goal:
Move StreamStudio from frozen system design into
real implementation without semantic drift.

handoff_principle:
- use frozen ledgers as canonical references
- do not reopen architecture casually
- keep implementation additive
- keep publish, listing, membership, split, and audit boundaries separate

# ============================================================
# 2. REQUIRED INPUT DOCUMENT SET
# ============================================================

required_input_documents:
- 020_STREAM_STUDIO_ARCHITECTURE.md
- 030_STREAM_STUDIO_MODEL_OVERVIEW.md
- 031_STREAM_STUDIO_COMMERCE_AND_MEMBERSHIP_MODEL_EXTENSION.md
- 040_STREAM_STUDIO_SCREEN_AND_STATEFLOW.md
- 051_STREAM_STUDIO_SCREEN_STATE_TRANSITION_EXACT_TABLE.md
- 050_STREAM_STUDIO_API_SURFACE.md
- 051_STREAM_STUDIO_PROJECT_AND_UPLOAD_API_EXACT.md
- 052_STREAM_STUDIO_DRAFT_ASSET_API_EXACT.md
- 053_STREAM_STUDIO_REVIEW_APPROVAL_API_EXACT.md
- 054_STREAM_STUDIO_PUBLISH_API_EXACT.md
- 055_STREAM_STUDIO_MARKETPLACE_LISTING_API_EXACT.md
- 056_STREAM_STUDIO_MEMBERSHIP_API_EXACT.md
- 057_STREAM_STUDIO_SPLIT_AND_SETTLEMENT_API_EXACT.md
- 059_STREAM_STUDIO_VALIDATION_AND_ERROR_CODE_EXACT_TABLE.md
- 071_STREAM_STUDIO_RUNTIME_JOB_RETRY_AND_DEADLETTER_EXACT.md
- 081_STREAM_STUDIO_PERMISSION_MATRIX_EXACT.md
- 121_STREAM_STUDIO_IMPLEMENTATION_READINESS_FINAL_FREEZE_MEMO.md
- 122_STREAM_STUDIO_ENUM_LEDGER.md
- 123_STREAM_STUDIO_FIELD_DICTIONARY.md
- 124_STREAM_STUDIO_AUDIT_EVENT_CODE_LEDGER.md
- 125_STREAM_STUDIO_DB_SIDE_MAPPING_DECISION_MEMO.md
- 126_STREAM_STUDIO_EVENT_NAMING_LEDGER.md
- 127_STREAM_STUDIO_UI_COPY_KEY_LEDGER.md
- 128_STREAM_STUDIO_IMPLEMENTATION_DEPENDENCY_MEMO.md

# ============================================================
# 3. PRE-IMPLEMENTATION CHECKLIST
# ============================================================

pre_implementation_checklist:
- architecture_direction_frozen
- api_contracts_frozen
- screen_transition_rules_frozen
- permission_matrix_frozen
- validation_and_error_codes_frozen
- runtime_retry_and_dead_letter_rules_frozen
- enum_ledger_frozen
- field_dictionary_frozen
- audit_event_codes_frozen
- db_mapping_direction_frozen
- ui_copy_key_direction_frozen
- implementation_phase_order_frozen

release_gate:
- all_above_must_be_true_before_real_build_start

# ============================================================
# 4. IMPLEMENTATION WORKSTREAM CHECKLIST
# ============================================================

workstream_checklist:

  backend_contracts:
    - map_api_exact_docs_to_router_endpoints
    - map_field_dictionary_to_request_response_models
    - map_validation_codes_to_validator_output
    - map_business_rule_codes_to_service_output
    - wire_idempotency_handling

  db_mapping:
    - choose_physical_schema_name
    - choose_physical_id_strategy
    - map_logical_tables_to_real_tables
    - map_enum_columns_as_text_with_constraints
    - map_money_columns_with_currency_pairs
    - create_runtime_job_and_dead_letter_tables
    - create_audit_event_table

  screen_implementation:
    - create_navigation_shell
    - build_home_dashboard
    - build_project_detail_tabs
    - build_upload_queue
    - build_review_workspace
    - build_publish_settings
    - build_marketplace_listing
    - build_membership_manager
    - build_split_editor
    - build_notification_inbox
    - respect_confirmation_required_actions

  runtime_and_ops:
    - implement_job_catalog
    - implement_retry_backoff
    - implement_dead_letter_visibility
    - implement_reconciliation_jobs
    - implement_minimum_metrics
    - implement_operator_attention_surfaces

  governance_and_audit:
    - emit_audit_codes_for_high_risk_actions
    - emit_event_names_for_domain_facts
    - store_scope_and_target_refs
    - preserve_append_only_audit_behavior

# ============================================================
# 5. PHASE START CHECKLIST
# ============================================================

phase_start_checklist:

  phase_1_creator_asset_base:
    required:
      - project_table_mapping_done
      - upload_contract_mapping_done
      - video_draft_contract_mapping_done
      - metadata_editing_copy_keys_ready
      - asset_scope_permission_mapping_ready

  phase_2_review_and_publish_base:
    required:
      - review_and_approval_contract_mapping_done
      - publish_setting_contract_mapping_done
      - approval_audit_codes_wired
      - scheduled_publish_runtime_jobs_ready

  phase_3_marketplace_and_paid_video:
    required:
      - listing_contract_mapping_done
      - price_validation_codes_wired
      - marketplace_category_mapping_decided
      - listing_to_split_gate_decided

  phase_4_membership:
    required:
      - membership_contract_mapping_done
      - content_rule_mapping_done
      - early_access_runtime_jobs_ready
      - entitlement_reconciliation_direction_ready

  phase_5_split_and_settlement:
    required:
      - split_contract_mapping_done
      - settlement_reference_mapping_done
      - split_activation_audit_codes_wired

  phase_6_external_push_and_ops_hardening:
    required:
      - connector_scope_permission_mapping_done
      - external_push_job_mapping_done
      - dead_letter_operator_surface_ready
      - reconciliation_metrics_ready

# ============================================================
# 6. TEST CHECKLIST
# ============================================================

minimum_test_checklist:
- upload_success_path_test
- upload_retry_path_test
- metadata_optimistic_lock_test
- review_to_approval_transition_test
- publish_ready_blocked_test
- publish_success_external_push_failure_test
- listing_paid_without_split_block_test
- membership_content_rule_conflict_test
- split_activation_overlap_block_test
- dead_letter_visibility_test
- audit_event_emission_test
- permission_scope_denial_test

# ============================================================
# 7. DO-NOT-DRIFT RULES
# ============================================================

do_not_drift_rules:
- do_not_merge_publish_and_listing_status
- do_not_merge_membership_and_paid_offer_logic_implicitly
- do_not_hide_blockers_inside_generic_unknown_error
- do_not_skip_audit_for_high_risk_actions
- do_not_bypass_confirmation_for_irreversible_actions
- do_not_replace_enum_values_with_ui_labels
- do_not_collapse_major_domain_state_into_opaque_json

# ============================================================
# 8. HANDOFF ACCEPTANCE CHECK
# ============================================================

handoff_acceptance_check:
- implementer_has_read_freeze_memo
- implementer_has_read_enum_ledger
- implementer_has_read_field_dictionary
- implementer_has_read_api_exact_docs
- implementer_has_read_permission_matrix
- implementer_has_read_runtime_exact_doc
- implementer_has_read_db_mapping_memo
- implementer_has_read_dependency_memo

# ============================================================
# 9. FINAL HANDOFF STATEMENT
# ============================================================

fixed_statement:
StreamStudio implementation handoff is accepted only when
all frozen design ledgers are treated as canonical
and the phased work proceeds without reopening
core architecture boundaries.
