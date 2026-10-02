# AIWorkerOS Guardrail Knowledge DB GKD-4 Runtime Integration Design

DOCUMENT_STATUS=DESIGN_DRAFT
PHASE=GKD-4B_RUNTIME_INTEGRATION_DESIGN_DRAFT
TARGET_OS=11.aiworker-os
TARGET_DOMAIN=guardrail-knowledge-db

GUARDS:
- DB_WRITE=NO
- DDL_APPLY=NO
- SEED_APPLY=NO
- API_POST=NO
- CODE_PATCH=NO
- GIT_PUSH=NO

============================================================
1. 結論
============================================================

AIWorkerOS runtime は、実行前に Guardrail Knowledge DB を read-only 参照し、依頼ごとに guardrail decision を生成する。

GKD-4 の目的は、AIWorkerOS runtime の実行直前に以下を追加すること。

1. 作業種別を分類する
2. 適用対象のガードレールを取得する
3. preflight template を取得する
4. blocking condition を確認する
5. pass / warn / blocked / review_required / confirmation_required / insufficient_context を判定する
6. blocked の場合は実行しない
7. 判定結果を aiworker.guardrail_runtime_check_result に保存する
8. consumer である AICM 等へ判定結果を返せるようにする

============================================================
2. 責務境界
============================================================

AIWorkerOS owns:
- guardrail lookup
- work_type classification
- preflight decision
- blocking/review_required/confirmation_required decision
- runtime check result persistence
- execution stop decision

AICM owns:
- guardrail decision display
- report/run link display
- review waiting list display
- AIWorkerOS output consumption

CX22073JW owns:
- background/reference knowledge only
- no execution authority
- no guardrail decision authority

CommonOS owns:
- optional shared UI components only
- no guardrail decision core

============================================================
3. DB objects used by runtime
============================================================

Read-only runtime lookup:

- aiworker.vw_guardrail_preflight_for_scope
- aiworker.guardrail_preflight_template
- aiworker.vw_guardrail_blocking_condition
- aiworker.vw_guardrail_recent_mistake_case
- aiworker.vw_guardrail_active_rule

Runtime result write:

- aiworker.guardrail_runtime_check_result

Not used for initial runtime decision:

- aiworker.guardrail_candidate_intake
- aiworker.guardrail_evidence_link

Reason:
candidate_intake is for future improvement workflow.
evidence_link is for execution evidence/report linkage, not initial blocking decision.

============================================================
4. Runtime input contract draft
============================================================

Guardrail preflight input should be normalized into an internal object.

Recommended internal object:

- request_id
- source_app_code
- target_os_code
- target_app_code
- target_domain_code
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
- user_confirmation_status_code
- request_summary_text
- source_context_summary_text

target_work_type_code values:

- design
- code_patch
- db_readonly
- db_apply
- api_patch
- ui_patch
- server_patch
- artifact_generation
- git_commit
- git_push
- handoff
- report_only

============================================================
5. Runtime output contract draft
============================================================

Guardrail decision output:

- ok boolean
- check_status_code
- blocking_flag
- review_required_flag
- confirmation_required_flag
- ui_test_required_flag
- matched_rule_codes
- matched_pattern_codes
- check_summary_text
- required_next_action_text
- guardrail_report_ref
- runtime_check_result_id

check_status_code values:

- pass
- warn
- blocked
- review_required
- confirmation_required
- insufficient_context

Decision priority:

1. blocked
2. confirmation_required
3. review_required
4. warn
5. pass

============================================================
6. Core decision rules
============================================================

Hard block conditions:

- DB write requested and boss_go_flag is false
- DDL apply requested and boss_go_flag is false
- API POST requested and boss_go_flag is false
- git push requested and explicit push request is absent
- SQL/DDL requested and ai_review_status_code is not accepted
- target DB variable mismatch is detected
- secret output risk is detected
- CX22073JW is asked to execute or decide
- AICM is asked to fabricate AIWorkerOS deliverable body/summary
- CommonOS is asked to own business canon or guardrail decision core

Review required conditions:

- broad code patch
- responsibility boundary unclear
- existing code/schema dump missing
- destructive flag unclear
- external action requested
- target work type insufficient

UI test required conditions:

- ui_flag is true
- target screen exists
- no UI-centered verification plan exists

Warning conditions:

- server state unknown
- Termux /tmp usage risk
- artifact metadata success without file-size verification
- missing optional evidence

============================================================
7. Suggested runtime function boundaries
============================================================

Recommended functions:

- classifyGuardrailWorkType(requestContext)
- buildGuardrailPreflightInput(requestContext)
- loadGuardrailRulesForScope(db, preflightInput)
- loadGuardrailPreflightTemplate(db, targetWorkTypeCode)
- evaluateGuardrailDecision(preflightInput, rules, templates, blockingConditions)
- persistGuardrailRuntimeCheckResult(db, decision)
- attachGuardrailDecisionToRuntimeOutput(output, decision)

Responsibility notes:

- DB lookup should be read-only until persistGuardrailRuntimeCheckResult.
- persistGuardrailRuntimeCheckResult is the only new DB write in runtime integration.
- No seed or DDL should run from runtime.
- No AICM-side generation logic should be added.

============================================================
8. Integration location draft
============================================================

Preferred hook point:

- After request/queue item is normalized.
- Before AIWorkerOS starts actual work.
- Before source file analysis, DB action, artifact generation, or external action.
- Before any worker execution that can create output.

Do not hook:

- After deliverable generation only.
- Inside AICM UI.
- Inside CX22073JW.
- Inside CommonOS UI components.
- Inside seed/DDL scripts.

============================================================
9. Persistence draft
============================================================

Insert into aiworker.guardrail_runtime_check_result:

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

Persistence behavior:

- pass/warn/review_required/confirmation_required/blocked should all be recorded
- blocked requests should not proceed to execution
- insufficient_context should not proceed when missing field is required
- runtime_result_id should be returned or included in report metadata

============================================================
10. AICM display integration draft
============================================================

AICM should receive or display:

- check_status_code
- blocking_flag
- review_required_flag
- confirmation_required_flag
- ui_test_required_flag
- matched_rule_codes
- check_summary_text
- required_next_action_text
- report/run reference

AICM should not:

- decide the guardrail result
- bypass blocked decision
- generate substitute AIWorkerOS deliverable body
- alter Guardrail Knowledge DB canon

============================================================
11. Implementation phases after this design
============================================================

GKD-4C: runtime code inventory with exact source dumps
- DB_WRITE=NO
- CODE_PATCH=NO
- Determine exact files/functions to patch
- Dump target code before patch

GKD-4D: NOT_EXECUTED patch draft
- CODE_PATCH=NO
- Produce patch plan and AI review
- No runtime modification yet

GKD-4E: runtime patch apply
- CODE_PATCH=YES
- Requires Boss GO
- Minimal patch only
- rollback on unsafe failure
- syntax check

GKD-4F: runtime read-only smoke
- API_POST=NO where possible
- If runtime POST is required, separate GO
- verify guardrail pass/warn/block examples

GKD-5: AICM display integration
- AICM remains consumer
- UI-centered test required
- no guardrail decision core in AICM

============================================================
12. GKD-4C prerequisites
============================================================

Before patch:

1. Dump target runtime files.
2. Identify DB helper/pool convention.
3. Identify request normalization point.
4. Identify queue consumer execution start point.
5. Identify output/result object shape.
6. Identify error/result handling convention.
7. Confirm no duplicate helper/bridge is needed.
8. Confirm exact minimal insertion point.
9. Confirm rollback method.
10. Confirm syntax and runtime smoke method.

============================================================
13. Completion condition for GKD-4 runtime integration
============================================================

GKD-4 is complete when:

1. AIWorkerOS reads active guardrail rules before execution.
2. AIWorkerOS evaluates scope/work-type flags.
3. AIWorkerOS records guardrail_runtime_check_result.
4. blocked requests do not execute.
5. pass/warn decisions continue safely.
6. review_required / confirmation_required states are returned clearly.
7. No AICM/CX/CommonOS responsibility boundary is violated.
8. Tests verify pass, warn, blocked, and insufficient_context cases.
9. Secret scan is clean.
10. No git push unless explicitly requested.

