# ============================================================
# NAMECARDMANAGER PHASE A IMPLEMENTATION START ORDER
# ============================================================

status: canonical
layer: meta
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Fixes the practical start order for Phase A implementation.

phase_a_start_order:
- step_01_project_shell_and_module_structure
- step_02_ui_string_key_skeleton
- step_03_local_schema_skeleton
- step_04_basic_record_dto_and_api_contract_binding
- step_05_list_and_detail_screen_skeleton
- step_06_basic_crud_local_first_path
- step_07_sync_queue_skeleton
- step_08_auth_inheritance_entry
- step_09_authorization_gate
- step_10_share_apply_revoke_core
- step_11_publication_preflight_request_core
- step_12_front_back_image_basic_flow
- step_13_csv_import_minimum_entry
- step_14_basic_audit_history_surface
- step_15_phase_a_integration_test_pass

rules:
- do not start advanced enrichment before phase_a core path works
- do not start semantic search before exact lexical search works
- do not start advanced migration support before minimum CSV import works
- do not start ERP-direct assumptions because publication flows through shared BusinessOS capability only

