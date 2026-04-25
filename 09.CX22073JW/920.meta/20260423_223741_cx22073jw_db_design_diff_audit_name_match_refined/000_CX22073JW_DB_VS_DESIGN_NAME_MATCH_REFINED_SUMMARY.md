# CX22073JW DB VS DESIGN NAME MATCH REFINED SUMMARY

status: generated
source_audit_dir: /data/data/com.termux/files/home/01.civilization-system/09.CX22073JW/920.meta/20260423_223741_cx22073jw_db_design_diff_audit
design_root: /data/data/com.termux/files/home/01.civilization-system/09.CX22073JW

counts:
- db_object_total: 532
- name_matched_in_design: 15
- name_not_matched_in_design: 517

meaning:
- This audit ignores schema-prefix dependency.
- It checks whether actual DB object names themselves appear in design markdown.
- It is more useful than the previous schema-qualified-only scan.

top_name_not_matched:
function	fn_apply_area_exact_upsert
function	fn_apply_contract_remediation_batch
function	fn_article_publication_readiness
function	fn_build_generation_sql
function	fn_build_staticart_contract_remediation_batch
function	fn_build_staticart_minimum_first_send_bundle
function	fn_can_access_secret
function	fn_compile_ai_employee_governed_apply_queue
function	fn_confirm_access_manual_apply_receipt_items
function	fn_convert_unit
function	fn_create_ai_employee_activation_request
function	fn_create_ai_employee_manual_apply_receipt_batch
function	fn_default_required_keys
function	fn_enqueue_foundation_job
function	fn_evaluate_ai_employee_activation_request
function	fn_evaluate_all_ai_employee_activation_requests
function	fn_execute_sample_case
function	fn_generate_ai_employee_stub_views
function	fn_generate_area_upsert_wrapper_sql
function	fn_get_staticart_block_json
function	fn_get_template_fragments
function	fn_is_date_in_seasonal_window
function	fn_jsonb_missing_required_keys
function	fn_mark_ai_employee_review_items
function	fn_prepare_ai_employee_governed_apply_batch
function	fn_promote_ai_employee_governed_apply_runtime_ready
function	fn_provision_ai_employee_db_roles
function	fn_publish_staticart_minimum_first_send_fixed_contract_release
function	fn_refresh_ai_employee_activation_request_decisions
function	fn_refresh_area_exact_contract_snapshots

top_name_matched:
table	access_route_master	/data/data/com.termux/files/home/01.civilization-system/09.CX22073JW/020.architecture/100_CX22073JW_SECRET_LAYER_FIXED_DECISIONS.md:49:- `access_route_master`
table	entity_master	/data/data/com.termux/files/home/01.civilization-system/09.CX22073JW/020.architecture/022_CX22073JW_DATA_DOMAIN_LEDGER.md:55:| 2 | 人物・実体領域 | 固定知識 | 人物・概念・制度・組織の正本 | `entity_master`, `character_profile` | Portal, lore, history, app support | 高 |
table	privilege_tier_master	/data/data/com.termux/files/home/01.civilization-system/09.CX22073JW/020.architecture/100_CX22073JW_SECRET_LAYER_FIXED_DECISIONS.md:50:- `privilege_tier_master`
table	privileged_access_audit_log	/data/data/com.termux/files/home/01.civilization-system/09.CX22073JW/020.architecture/100_CX22073JW_SECRET_LAYER_FIXED_DECISIONS.md:58:- `privileged_access_audit_log`
table	privileged_policy_profile	/data/data/com.termux/files/home/01.civilization-system/09.CX22073JW/020.architecture/100_CX22073JW_SECRET_LAYER_FIXED_DECISIONS.md:56:- `privileged_policy_profile`
table	privileged_route_policy_binding	/data/data/com.termux/files/home/01.civilization-system/09.CX22073JW/020.architecture/100_CX22073JW_SECRET_LAYER_FIXED_DECISIONS.md:57:- `privileged_route_policy_binding`
table	secret_asset	/data/data/com.termux/files/home/01.civilization-system/09.CX22073JW/020.architecture/100_CX22073JW_SECRET_LAYER_FIXED_DECISIONS.md:52:- `secret_asset`
table	secret_asset_category_master	/data/data/com.termux/files/home/01.civilization-system/09.CX22073JW/020.architecture/100_CX22073JW_SECRET_LAYER_FIXED_DECISIONS.md:51:- `secret_asset_category_master`
table	secret_route_binding	/data/data/com.termux/files/home/01.civilization-system/09.CX22073JW/020.architecture/100_CX22073JW_SECRET_LAYER_FIXED_DECISIONS.md:55:- `secret_route_binding`
table	secret_target_master	/data/data/com.termux/files/home/01.civilization-system/09.CX22073JW/020.architecture/100_CX22073JW_SECRET_LAYER_FIXED_DECISIONS.md:54:- `secret_target_master`
table	secret_target_selector_master	/data/data/com.termux/files/home/01.civilization-system/09.CX22073JW/020.architecture/100_CX22073JW_SECRET_LAYER_FIXED_DECISIONS.md:53:- `secret_target_selector_master`
table	unit_conversion_rule	/data/data/com.termux/files/home/01.civilization-system/09.CX22073JW/020.architecture/020_CX22073JW_DATA_DOMAIN_LEDGER.md:52:| 28 | 単位・換算・地域表示領域 | 参照基盤 | measure unit / 正規化 / 換算 / locale別単位表示を管理 | `unit_master`, `unit_category_master`, `unit_conversion_rule`, `purchasable_unit_reference`, `locale_unit_preference` | MealPlanner, BodyMetrics, TrainingCoach | 高 |
view	vw_aiemp_utility_masked_user_context	/data/data/com.termux/files/home/01.civilization-system/09.CX22073JW/199_CX22073JW_FULL_INTEGRATED_CANONICAL.md:172:- `vw_aiemp_utility_masked_user_context`
view	vw_aiemp_utility_summary_context	/data/data/com.termux/files/home/01.civilization-system/09.CX22073JW/199_CX22073JW_FULL_INTEGRATED_CANONICAL.md:173:- `vw_aiemp_utility_summary_context`
view	vw_aiemp_utility_writing_context	/data/data/com.termux/files/home/01.civilization-system/09.CX22073JW/199_CX22073JW_FULL_INTEGRATED_CANONICAL.md:174:- `vw_aiemp_utility_writing_context`
