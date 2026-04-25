# ============================================================
# CX22073JW DB VS DESIGN DIFF AUDIT SUMMARY
# ============================================================

status: generated
system: CX22073JW
schema: cx22073jw
owner: Boss
prepared_by: Zero
generated_at: 2026-04-23 22:38:00 +0900

## 1. Purpose
Audit the current difference candidates between:
- actual DB objects in schema `cx22073jw`
- markdown design documents under `/data/data/com.termux/files/home/01.civilization-system/09.CX22073JW`

## 2. Important caveat
This audit is a **fast heuristic audit**.
It is reliable for finding useful difference candidates, but it is not a semantic proof of perfect equivalence.

In particular:
- "DB object not mentioned in design" may mean undocumented, implementation-only, or named differently in docs.
- "Design mention not found in DB" may mean stale wording, future design, alias wording, or name drift.

## 3. Scope
Excluded from markdown scan:
- 920.meta
- 999.archive
- .git

Included object classes:
- table
- partitioned_table
- view
- materialized_view
- function

## 4. Counts
- design_markdown_count: 104
- db_object_count: 532
- doc_schema_mention_count: 0
- doc_schema_mentions_not_in_db_count: 0
- db_objects_mentioned_in_design_count: 17
- db_objects_not_mentioned_in_design_count: 515

## 5. Generated files
- 010_db_objects.tsv
- 011_db_object_names.txt
- 020_doc_schema_mentions_raw.txt
- 021_doc_schema_mentioned_object_names.txt
- 022_doc_schema_mentions_not_in_db.tsv
- 023_doc_schema_mentions_in_db.tsv
- 030_db_objects_not_mentioned_in_design.tsv
- 031_db_objects_mentioned_in_design.tsv

## 6. Quick reading guide
- If `030_db_objects_not_mentioned_in_design.tsv` is non-zero, those are DB-side undocumented or naming-drift candidates.
- If `022_doc_schema_mentions_not_in_db.tsv` is non-zero, those are doc-side stale/planned/naming-drift candidates.

## 7. Top candidates: DB objects not mentioned in design
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

## 8. Top candidates: Design mentions not found in DB


## 9. Conclusion
This report does **not** yet prove full zero-diff equivalence.
It gives the fastest concrete shortlist for manual reconciliation.
