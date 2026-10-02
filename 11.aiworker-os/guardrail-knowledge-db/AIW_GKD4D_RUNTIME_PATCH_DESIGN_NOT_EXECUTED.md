# AIWorkerOS Guardrail Knowledge DB GKD-4D Runtime Patch Design

DOCUMENT_STATUS=NOT_EXECUTED_PATCH_DESIGN
PHASE=GKD-4D_NOT_EXECUTED_RUNTIME_PATCH_DESIGN
TARGET_OS=11.aiworker-os
TARGET_DOMAIN=guardrail-knowledge-db

GUARDS:
- DB_WRITE=NO
- DDL_APPLY=NO
- SEED_APPLY=NO
- API_POST=NO
- CODE_PATCH=NO
- GIT_PUSH=NO
- FILE_MODIFY=DESIGN_ONLY

============================================================
1. 結論
============================================================

GKD-4Eで実装する候補は、AIWorkerOS runtime の「実行開始直前」に Guardrail Knowledge DB の preflight 判定を挿入する最小差分とする。

今回のGKD-4Dではコードを変更しない。
GKD-4Eでコードパッチを行う場合は、Boss GO が必要。

============================================================
2. 根拠
============================================================

GKD-4C evidence:

- PATCHPOINT_MEMO=/data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/guardrail-knowledge-db/900.meta/20260517_140504_aiw_gkd4c_runtime_source_dump_patchpoint_inventory/110_candidate_patchpoint_inventory.md
- DUMP_MAP=/data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/guardrail-knowledge-db/900.meta/20260517_140504_aiw_gkd4c_runtime_source_dump_patchpoint_inventory/040_source_dump_map.tsv
- REQUEST_MATCHES=/data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/guardrail-knowledge-db/900.meta/20260517_140504_aiw_gkd4c_runtime_source_dump_patchpoint_inventory/050_request_execution_matches.txt
- DB_HELPER_MATCHES=/data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/guardrail-knowledge-db/900.meta/20260517_140504_aiw_gkd4c_runtime_source_dump_patchpoint_inventory/060_db_helper_matches.txt
- QUEUE_MATCHES=/data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/guardrail-knowledge-db/900.meta/20260517_140504_aiw_gkd4c_runtime_source_dump_patchpoint_inventory/070_queue_consumer_matches.txt
- OUTPUT_MATCHES=/data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/guardrail-knowledge-db/900.meta/20260517_140504_aiw_gkd4c_runtime_source_dump_patchpoint_inventory/080_output_deliverable_matches.txt
- ERROR_MATCHES=/data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/guardrail-knowledge-db/900.meta/20260517_140504_aiw_gkd4c_runtime_source_dump_patchpoint_inventory/090_error_result_matches.txt
- GUARDRAIL_MATCHES=/data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/guardrail-knowledge-db/900.meta/20260517_140504_aiw_gkd4c_runtime_source_dump_patchpoint_inventory/100_existing_guardrail_policy_matches.txt

DB readiness:

- ACTIVE_RULE_COUNT=15
- PREFLIGHT_SCOPE_COUNT=13
- BLOCKING_COUNT=7
- RUNTIME_CHECK_RESULT_COUNT=0

Source target count:

- SOURCE_TARGET_COUNT=4

============================================================
3. 実装方針
============================================================

正式実装方針:

1. 既存 runtime の DB helper / pool / query convention を再利用する。
2. 新規DB接続ヘルパーを増やさない。
3. 既存 request / queue item normalization の後に guardrail input を作る。
4. 実際の worker execution / artifact generation / external action の前に guardrail decision を評価する。
5. blocked の場合は worker execution に進めない。
6. guardrail_runtime_check_result へ判定を保存する。
7. runtime response / output へ guardrail decision を含める。
8. AICM は decision を表示する consumer に限定する。
9. CX22073JW / CommonOS へ判定責務を移さない。

============================================================
4. 最小追加関数案
============================================================

GKD-4Eで追加または既存箇所へ統合する候補関数:

- buildGuardrailPreflightInput(runtimeRequest)
- loadGuardrailPreflightForScope(db, input)
- loadGuardrailPreflightTemplate(db, targetWorkTypeCode)
- loadGuardrailBlockingConditions(db)
- evaluateGuardrailDecision(input, rules, template, blockingConditions)
- persistGuardrailRuntimeCheckResult(db, requestId, input, decision)
- attachGuardrailDecisionToRuntimeOutput(output, decision)

ただし、既存構造に近い関数がある場合は、重複追加ではなく既存構造へ統合する。

============================================================
5. Guardrail input mapping
============================================================

runtime request から以下を作る。

- request_id
- target_os_code
- target_app_code
- target_work_type_code
- target_file_pattern
- db_write_flag
- ddl_apply_flag
- seed_apply_flag
- api_post_flag
- ui_flag
- git_flag
- destructive_flag
- external_action_flag
- boss_go_flag
- ai_review_status_code
- request_summary_text

初期の target_work_type_code 推定:

- artifact_generation: deliverable / artifact / zip / generated_artifacts を含む実行
- db_apply: DB_WRITE / DDL_APPLY / SEED_APPLY が真
- api_patch: API route / server patch
- ui_patch: UI file / screen operation
- git_push: git push requested
- code_patch: code patch requested
- report_only: report/inventory/design only

============================================================
6. Decision rule
============================================================

blocked:

- db_write_flag=true and boss_go_flag=false
- ddl_apply_flag=true and boss_go_flag=false
- seed_apply_flag=true and boss_go_flag=false
- api_post_flag=true and boss_go_flag=false
- git_flag=true and explicit push request missing
- ai_review required but not accepted
- responsibility boundary violation detected
- secret output risk detected

review_required:

- broad patch
- unknown target work type
- insufficient source dump
- unclear owner/consumer boundary

warn:

- UI change without UI-centered test plan
- server state unknown
- artifact metadata without file-size verification
- Termux /tmp risk

pass:

- no blocking/review/warn condition

Priority:

1. blocked
2. confirmation_required
3. review_required
4. warn
5. pass

============================================================
7. Persistence
============================================================

Write to aiworker.guardrail_runtime_check_result only after decision is created.

Fields:

- request_id
- target_os_code
- target_app_code
- target_work_type_code
- check_status_code
- blocking_flag
- review_required_flag
- confirmation_required_flag
- ui_test_required_flag
- matched_rule_codes
- matched_pattern_codes
- check_summary_text
- required_next_action_text

No write to:

- guardrail_rule
- guardrail_failure_pattern
- guardrail_preflight_template
- guardrail_mistake_case
- guardrail_candidate_intake
- guardrail_evidence_link

============================================================
8. Runtime output behavior
============================================================

If blocked:

- do not execute worker
- do not generate artifact
- return guardrail decision
- save runtime check result
- include required_next_action_text

If review_required:

- do not silently execute risky work
- return review_required status or route to review gate depending on existing runtime convention

If warn:

- continue only when safe
- attach warning to output/result

If pass:

- continue existing execution path

============================================================
9. Non-target
============================================================

Do not patch:

- AICM UI
- AICM server
- CX22073JW
- CommonOS
- seed scripts
- DDL scripts
- unrelated runtime files
- git workflow

Do not perform:

- DB schema change
- seed change
- API POST
- git push
- broad refactor
- new duplicate DB pool/helper unless proven necessary

============================================================
10. GKD-4E patch apply gate
============================================================

GKD-4E requires:

- Boss GO
- exact source file target
- exact line target from GKD-4C dumps
- rollback method
- syntax check command
- read-only DB smoke command
- runtime smoke plan
- secret scan

GKD-4E must not push git unless explicitly requested.

============================================================
11. GKD-4E verification plan
============================================================

Minimum verification after patch:

1. syntax check for patched runtime files
2. read-only DB check:
   - vw_guardrail_active_rule
   - vw_guardrail_preflight_for_scope
   - vw_guardrail_blocking_condition
3. runtime pass case
4. runtime blocked case
5. runtime warn/review_required case
6. guardrail_runtime_check_result insert confirmation
7. artifact generation still works for pass case
8. blocked case does not generate artifact
9. secret scan
10. report generation

If API POST is required for runtime verification, use a separate explicit GO.

============================================================
12. GKD-4D completion condition
============================================================

GKD-4D is complete when:

- this NOT_EXECUTED patch design exists
- GKD-4C evidence is referenced
- DB readiness is recorded
- responsibility boundary is clear
- GKD-4E gate is explicit
- no code patch has been applied
- no API POST has been performed
- no git push has been performed
