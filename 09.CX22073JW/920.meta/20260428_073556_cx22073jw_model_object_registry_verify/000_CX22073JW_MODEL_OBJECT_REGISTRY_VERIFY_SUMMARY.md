# ============================================================
# CX22073JW MODEL OBJECT REGISTRY VERIFY SUMMARY
# ============================================================

status: REVIEW_REQUIRED
system: CX22073JW
schema: cx22073jw
owner: Boss
prepared_by: Zero
reviewer: Sato (DB)
generated_at: 2026-04-28 07:36:15 +0900

## 1. Purpose
Verify whether live DB object names in schema `cx22073jw` are now represented in design markdown after placing the exact object registry under Model.

## 2. Source files
- model_registry: `/data/data/com.termux/files/home/01.civilization-system/09.CX22073JW/030.model/030900_CX22073JW_DB_OBJECT_REGISTRY_EXACT.md`
- model_alignment: `/data/data/com.termux/files/home/01.civilization-system/09.CX22073JW/030.model/030910_CX22073JW_DB_DESIGN_ALIGNMENT_EXACT.md`
- integrated: `/data/data/com.termux/files/home/01.civilization-system/09.CX22073JW/199_CX22073JW_FULL_INTEGRATED_CANONICAL.md`

## 3. Counts
- db_object_total: 552
- matched_in_design: 539
- not_matched_in_design: 13

## 4. Result
- result: REVIEW_REQUIRED

## 5. Meaning
If `not_matched_in_design = 0`, the design side now contains all live DB object names at least as exact registry references.

This does not mean every object has detailed semantic design,
but it means exact object-name canon is now present in the design tree.

## 6. Not matched sample
table	business_support_knowledge_material
table	business_support_knowledge_package
table	business_support_topic
table	executive_strategy_knowledge_package
table	executive_strategy_material
table	executive_strategy_topic
view	vw_business_support_knowledge_catalog
view	vw_executive_strategy_knowledge_catalog
view	vw_robot_model_full_reference_v1
view	vw_robot_model_full_reference_v2
view	vw_robot_personality_reference_v1
view	vw_robot_public_profile_reference_v1
view	vw_robot_role_reference_v1

## 7. Matched sample
function	fn_apply_area_exact_upsert	/data/data/com.termux/files/home/01.civilization-system/09.CX22073JW/030.model/030900_CX22073JW_DB_OBJECT_REGISTRY_EXACT.md:37:| 1 | function | `fn_apply_area_exact_upsert` |
function	fn_apply_contract_remediation_batch	/data/data/com.termux/files/home/01.civilization-system/09.CX22073JW/030.model/030900_CX22073JW_DB_OBJECT_REGISTRY_EXACT.md:38:| 2 | function | `fn_apply_contract_remediation_batch` |
function	fn_article_publication_readiness	/data/data/com.termux/files/home/01.civilization-system/09.CX22073JW/030.model/030900_CX22073JW_DB_OBJECT_REGISTRY_EXACT.md:39:| 3 | function | `fn_article_publication_readiness` |
function	fn_build_generation_sql	/data/data/com.termux/files/home/01.civilization-system/09.CX22073JW/030.model/030900_CX22073JW_DB_OBJECT_REGISTRY_EXACT.md:40:| 4 | function | `fn_build_generation_sql` |
function	fn_build_staticart_contract_remediation_batch	/data/data/com.termux/files/home/01.civilization-system/09.CX22073JW/030.model/030900_CX22073JW_DB_OBJECT_REGISTRY_EXACT.md:41:| 5 | function | `fn_build_staticart_contract_remediation_batch` |
function	fn_build_staticart_minimum_first_send_bundle	/data/data/com.termux/files/home/01.civilization-system/09.CX22073JW/030.model/030900_CX22073JW_DB_OBJECT_REGISTRY_EXACT.md:42:| 6 | function | `fn_build_staticart_minimum_first_send_bundle` |
function	fn_can_access_secret	/data/data/com.termux/files/home/01.civilization-system/09.CX22073JW/030.model/030900_CX22073JW_DB_OBJECT_REGISTRY_EXACT.md:43:| 7 | function | `fn_can_access_secret` |
function	fn_compile_ai_employee_governed_apply_queue	/data/data/com.termux/files/home/01.civilization-system/09.CX22073JW/030.model/030900_CX22073JW_DB_OBJECT_REGISTRY_EXACT.md:44:| 8 | function | `fn_compile_ai_employee_governed_apply_queue` |
function	fn_confirm_access_manual_apply_receipt_items	/data/data/com.termux/files/home/01.civilization-system/09.CX22073JW/030.model/030900_CX22073JW_DB_OBJECT_REGISTRY_EXACT.md:45:| 9 | function | `fn_confirm_access_manual_apply_receipt_items` |
function	fn_convert_unit	/data/data/com.termux/files/home/01.civilization-system/09.CX22073JW/030.model/030900_CX22073JW_DB_OBJECT_REGISTRY_EXACT.md:46:| 10 | function | `fn_convert_unit` |
function	fn_create_ai_employee_activation_request	/data/data/com.termux/files/home/01.civilization-system/09.CX22073JW/030.model/030900_CX22073JW_DB_OBJECT_REGISTRY_EXACT.md:47:| 11 | function | `fn_create_ai_employee_activation_request` |
function	fn_create_ai_employee_manual_apply_receipt_batch	/data/data/com.termux/files/home/01.civilization-system/09.CX22073JW/030.model/030900_CX22073JW_DB_OBJECT_REGISTRY_EXACT.md:48:| 12 | function | `fn_create_ai_employee_manual_apply_receipt_batch` |
function	fn_default_required_keys	/data/data/com.termux/files/home/01.civilization-system/09.CX22073JW/030.model/030900_CX22073JW_DB_OBJECT_REGISTRY_EXACT.md:49:| 13 | function | `fn_default_required_keys` |
function	fn_enqueue_foundation_job	/data/data/com.termux/files/home/01.civilization-system/09.CX22073JW/030.model/030900_CX22073JW_DB_OBJECT_REGISTRY_EXACT.md:50:| 14 | function | `fn_enqueue_foundation_job` |
function	fn_evaluate_ai_employee_activation_request	/data/data/com.termux/files/home/01.civilization-system/09.CX22073JW/030.model/030900_CX22073JW_DB_OBJECT_REGISTRY_EXACT.md:51:| 15 | function | `fn_evaluate_ai_employee_activation_request` |
function	fn_evaluate_all_ai_employee_activation_requests	/data/data/com.termux/files/home/01.civilization-system/09.CX22073JW/030.model/030900_CX22073JW_DB_OBJECT_REGISTRY_EXACT.md:52:| 16 | function | `fn_evaluate_all_ai_employee_activation_requests` |
function	fn_execute_sample_case	/data/data/com.termux/files/home/01.civilization-system/09.CX22073JW/030.model/030900_CX22073JW_DB_OBJECT_REGISTRY_EXACT.md:53:| 17 | function | `fn_execute_sample_case` |
function	fn_generate_ai_employee_stub_views	/data/data/com.termux/files/home/01.civilization-system/09.CX22073JW/030.model/030900_CX22073JW_DB_OBJECT_REGISTRY_EXACT.md:54:| 18 | function | `fn_generate_ai_employee_stub_views` |
function	fn_generate_area_upsert_wrapper_sql	/data/data/com.termux/files/home/01.civilization-system/09.CX22073JW/030.model/030900_CX22073JW_DB_OBJECT_REGISTRY_EXACT.md:55:| 19 | function | `fn_generate_area_upsert_wrapper_sql` |
function	fn_get_staticart_block_json	/data/data/com.termux/files/home/01.civilization-system/09.CX22073JW/030.model/030900_CX22073JW_DB_OBJECT_REGISTRY_EXACT.md:56:| 20 | function | `fn_get_staticart_block_json` |
function	fn_get_template_fragments	/data/data/com.termux/files/home/01.civilization-system/09.CX22073JW/030.model/030900_CX22073JW_DB_OBJECT_REGISTRY_EXACT.md:57:| 21 | function | `fn_get_template_fragments` |
function	fn_is_date_in_seasonal_window	/data/data/com.termux/files/home/01.civilization-system/09.CX22073JW/030.model/030900_CX22073JW_DB_OBJECT_REGISTRY_EXACT.md:58:| 22 | function | `fn_is_date_in_seasonal_window` |
function	fn_jsonb_missing_required_keys	/data/data/com.termux/files/home/01.civilization-system/09.CX22073JW/030.model/030900_CX22073JW_DB_OBJECT_REGISTRY_EXACT.md:59:| 23 | function | `fn_jsonb_missing_required_keys` |
function	fn_mark_ai_employee_review_items	/data/data/com.termux/files/home/01.civilization-system/09.CX22073JW/030.model/030900_CX22073JW_DB_OBJECT_REGISTRY_EXACT.md:60:| 24 | function | `fn_mark_ai_employee_review_items` |
function	fn_prepare_ai_employee_governed_apply_batch	/data/data/com.termux/files/home/01.civilization-system/09.CX22073JW/030.model/030900_CX22073JW_DB_OBJECT_REGISTRY_EXACT.md:61:| 25 | function | `fn_prepare_ai_employee_governed_apply_batch` |
function	fn_promote_ai_employee_governed_apply_runtime_ready	/data/data/com.termux/files/home/01.civilization-system/09.CX22073JW/030.model/030900_CX22073JW_DB_OBJECT_REGISTRY_EXACT.md:62:| 26 | function | `fn_promote_ai_employee_governed_apply_runtime_ready` |
function	fn_provision_ai_employee_db_roles	/data/data/com.termux/files/home/01.civilization-system/09.CX22073JW/030.model/030900_CX22073JW_DB_OBJECT_REGISTRY_EXACT.md:63:| 27 | function | `fn_provision_ai_employee_db_roles` |
function	fn_publish_staticart_minimum_first_send_fixed_contract_release	/data/data/com.termux/files/home/01.civilization-system/09.CX22073JW/030.model/030900_CX22073JW_DB_OBJECT_REGISTRY_EXACT.md:64:| 28 | function | `fn_publish_staticart_minimum_first_send_fixed_contract_release` |
function	fn_refresh_ai_employee_activation_request_decisions	/data/data/com.termux/files/home/01.civilization-system/09.CX22073JW/030.model/030900_CX22073JW_DB_OBJECT_REGISTRY_EXACT.md:65:| 29 | function | `fn_refresh_ai_employee_activation_request_decisions` |
function	fn_refresh_area_exact_contract_snapshots	/data/data/com.termux/files/home/01.civilization-system/09.CX22073JW/030.model/030900_CX22073JW_DB_OBJECT_REGISTRY_EXACT.md:66:| 30 | function | `fn_refresh_area_exact_contract_snapshots` |
