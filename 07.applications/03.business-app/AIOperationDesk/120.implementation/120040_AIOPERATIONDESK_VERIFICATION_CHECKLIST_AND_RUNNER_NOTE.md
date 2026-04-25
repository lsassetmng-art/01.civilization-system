# ============================================================
# AI OPERATION DESK VERIFICATION CHECKLIST AND RUNNER NOTE
# ============================================================

status: exact-fixed
app: AIOperationDesk
layer: implementation
owner: Boss
prepared_by: Zero

purpose:
Define the verification checklist and runner note for the current design bundle state.

verification_checklist:
- check_root_index_present
- check_root_overview_present
- check_integrated_canonical_present
- check_exact_domain_model_present
- check_exact_api_request_response_present
- check_exact_api_db_mapping_present
- check_exact_view_family_requirement_present
- check_exact_ddl_present
- check_review_approval_decision_rules_present
- check_reason_dictionary_present
- check_supported_app_seed_rows_present
- check_supported_app_onboarding_exact_present
- check_multilingual_policy_present
- check_ui_wording_dictionary_present
- check_operation_guide_seed_present
- check_common_error_seed_present
- check_resident_context_field_dictionary_present
- check_erp_resident_stateflow_present
- check_builder_resident_stateflow_present
- check_main_console_module_exact_present
- check_main_console_stateflow_exact_present
- check_notification_bridge_contract_present
- check_notification_summary_payload_present
- check_freeze_precheck_apply_sequence_present

policy_integrity_checks:
- supported-app-only QA still enforced
- unsupported app execution still excluded
- resident surface target still limited to ERP + Builder families
- PocketSecretary boundary still preserved
- AI-side final access boundary still delegated to AI design
- raw aiworker/business direct AI reads still excluded
- execution still limited to controlled write surfaces
- ungated final posting still excluded
- free-chat mode still excluded

runner_note:
- run file presence checks first
- run naming consistency checks second
- run policy integrity checks third
- run DDL review fourth
- run seed review fifth
- do not start destructive implementation before checklist passes

current_result_target:
- implementation-ready freeze candidate after successful checklist review
