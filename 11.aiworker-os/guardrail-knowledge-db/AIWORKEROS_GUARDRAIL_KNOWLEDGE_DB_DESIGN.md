# AIWorkerOS Guardrail Knowledge DB Design

DOCUMENT_STATUS=CANONICAL_DESIGN_DRAFT
TARGET_OS=11.aiworker-os
TARGET_DOMAIN=AIWorkerOS Guardrail Knowledge DB
CANONICAL_DESIGN_PATH=~/01.civilization-system/11.aiworker-os/guardrail-knowledge-db/AIWORKEROS_GUARDRAIL_KNOWLEDGE_DB_DESIGN.md
IMPLEMENTATION_PATH_CANDIDATE=~/03.civilization-development/11.aiworker-os/guardrail-knowledge-db
DB_OWNER_SCHEMA=aiworker
DB_CONNECTION=PERSONA_DATABASE_URL
DB_APPLY=NO
DDL_APPLY=NO
DB_WRITE=NO
API_POST=NO
PATCH=NO
GIT_PUSH=NO

============================================================
1. 結論
============================================================

作業ミス、対応、再発防止、禁止手順、注意パターン、作業前チェック、実行前判定結果、証跡リンクは、AIWorkerOS側のGuardrail Knowledge DBとして設計・保管する。

このDBはAICM専用ではなく、AIWorkerOSを中心に複数OS/アプリが参照する共通品質基盤とする。

目的:
1. 同じ作業ミスの再発防止
2. 作業前に関連ガードレールを自動参照
3. 危険工程の自動停止・レビュー要求
4. 実行後レポートの証跡化
5. 新しいミスやユーザー指摘のナレッジ候補化
6. AICM / CX22073JW / CivilizationOS / BusinessOS / ERP 等への横展開

============================================================
2. 責務分離
============================================================

aiworker / AIWorkerOS:
- ガードレール正本
- ミス事例
- 禁止/注意パターン
- response runbook
- preflight template
- runtime check result
- evidence link
- candidate intake

AICM / BusinessOS:
- consumer
- 作業前チェック結果表示
- 停止理由表示
- 実行証跡表示
- レビュー結果表示
- ガードレール正本は持たない

CX22073JW:
- 背景知識
- 参照材料
- 用語説明
- 過去設計思想
- 実行主体、判定主体、ガードレール正本にはしない

CommonOS:
- 表示共通部品のみ
- 判定本体、DB write判断、push判断、業務正本は持たない

各OS/各アプリ:
- 自OS固有の適用結果
- 実行証跡
- 画面確認結果

============================================================
3. DB化する対象 / しない対象
============================================================

DB化する対象:
- 再発可能性がある作業ミス
- 作業前チェックに変換できる注意点
- 禁止手順
- レビュー必須条件
- 停止条件
- 失敗時の正式対応手順
- 作業後の証跡リンク
- 新しいミスやユーザー指摘の候補

DB化しない対象:
- その場限りの雑談
- 再発性のない単発ログ
- 秘密情報
- DATABASE_URL / PERSONA_DATABASE_URL / token / service role key
- 成果物zip本体
- 各アプリの業務正本
- 添付ファイル本文そのもの

============================================================
4. 推奨スキーマ構成
============================================================

schema:
- aiworker

tables:
- aiworker.guardrail_mistake_case
- aiworker.guardrail_failure_pattern
- aiworker.guardrail_response_runbook
- aiworker.guardrail_preflight_template
- aiworker.guardrail_rule
- aiworker.guardrail_scope_binding
- aiworker.guardrail_evidence_link
- aiworker.guardrail_runtime_check_result
- aiworker.guardrail_candidate_intake

views:
- aiworker.vw_guardrail_active_rule
- aiworker.vw_guardrail_preflight_for_scope
- aiworker.vw_guardrail_recent_mistake_case
- aiworker.vw_guardrail_blocking_condition
- aiworker.vw_guardrail_evidence_summary

============================================================
5. テーブル設計
============================================================

5.1 aiworker.guardrail_mistake_case

目的:
- 実際に起きた作業ミス、事故、危険兆候を記録する
- 再発防止策と紐づける

主なカラム案:
- mistake_case_id uuid primary key
- case_code text unique not null
- title text not null
- target_os_code text not null
- target_app_code text
- target_domain_code text
- phase_code text
- mistake_category_code text not null
- severity_code text not null
- occurred_at timestamptz
- detected_at timestamptz
- summary_text text not null
- root_cause_text text
- impact_text text
- correct_response_text text
- recurrence_prevention_text text
- next_check_condition_text text
- related_report_path text
- related_run_dir text
- status_code text not null default active
- created_at timestamptz not null default now()
- updated_at timestamptz not null default now()

代表case_code:
- PATCH_TOO_BROAD_FUNCTION_REPLACE
- GUESS_BASED_PATCH_WITHOUT_DUMP
- TMP_USAGE_IN_TERMUX
- DB_WRITE_WITHOUT_SATO_REVIEW
- SERVER_NOT_STARTED_BEFORE_UI_CHECK
- ZIP_METADATA_SUCCESS_BUT_ZERO_BYTE_FILE
- PUSH_WITHOUT_VERIFICATION
- RESPONSIBILITY_BOUNDARY_MIXED_AICM_CX_AIWORKER
- UI_ONLY_SMOKE_WITHOUT_SCREEN_CHECK
- DEBUG_LOGIC_LEFT_IN_PRODUCTION

5.2 aiworker.guardrail_failure_pattern

目的:
- AIが作業前に照合する失敗パターン辞書
- ミス事例より抽象度が高い

主なカラム案:
- failure_pattern_id uuid primary key
- pattern_code text unique not null
- pattern_name text not null
- category_code text not null
- severity_code text not null
- trigger_condition_text text not null
- prohibited_action_text text
- required_action_text text
- detection_hint_text text
- auto_action_code text not null
- status_code text not null default active
- created_at timestamptz not null default now()
- updated_at timestamptz not null default now()

auto_action_code:
- info
- warn
- block
- require_dump
- require_review
- require_confirmation
- require_ui_test
- require_rollback_plan
- require_secret_scan

代表pattern_code:
- GUESS_BASED_PATCH
- WIDE_PATCH
- DIRECT_DB_WRITE_WITHOUT_REVIEW
- UI_CHANGE_WITHOUT_UI_TEST
- SERVER_CHECK_WITHOUT_SERVER_BOOT
- TERMUX_TMP_USAGE
- GIT_PUSH_WITHOUT_EXPLICIT_REQUEST
- SECRET_OUTPUT_RISK
- CROSS_OS_RESPONSIBILITY_MIX
- DEBUG_LEFTOVER_RISK

5.3 aiworker.guardrail_response_runbook

目的:
- ミス発生時の正式対応手順を持つ
- 場当たり対応を防ぐ

主なカラム案:
- response_runbook_id uuid primary key
- runbook_code text unique not null
- title text not null
- applies_to_pattern_code text
- applies_to_category_code text
- severity_code text not null
- first_response_text text not null
- investigation_steps_text text
- repair_steps_text text
- rollback_condition_text text
- verification_steps_text text
- completion_condition_text text
- status_code text not null default active
- created_at timestamptz not null default now()
- updated_at timestamptz not null default now()

代表runbook_code:
- RUNBOOK_PATCH_FAILURE
- RUNBOOK_DB_ERROR
- RUNBOOK_UI_REGRESSION
- RUNBOOK_SERVER_NOT_RUNNING
- RUNBOOK_ZERO_BYTE_ARTIFACT
- RUNBOOK_SECRET_SCAN_WARNING
- RUNBOOK_WRONG_RESPONSIBILITY_SCOPE

5.4 aiworker.guardrail_preflight_template

目的:
- 作業種別ごとの作業前チェックテンプレート

主なカラム案:
- preflight_template_id uuid primary key
- template_code text unique not null
- target_work_type_code text not null
- title text not null
- checklist_jsonb jsonb not null
- stop_condition_jsonb jsonb
- required_evidence_jsonb jsonb
- status_code text not null default active
- created_at timestamptz not null default now()
- updated_at timestamptz not null default now()

target_work_type_code:
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

5.5 aiworker.guardrail_rule

目的:
- 個別ガードレールの正本
- 文章ルールを実行前判定に変換する

主なカラム案:
- guardrail_rule_id uuid primary key
- rule_code text unique not null
- rule_name text not null
- category_code text not null
- severity_code text not null
- rule_text text not null
- rationale_text text
- required_action_text text
- prohibited_action_text text
- exception_condition_text
- status_code text not null default active
- created_at timestamptz not null default now()
- updated_at timestamptz not null default now()

代表rule_code:
- RULE_NO_GUESS_PATCH
- RULE_DUMP_BEFORE_PATCH
- RULE_NO_TMP_ON_TERMUX
- RULE_USE_PERSONA_DATABASE_URL_FOR_AIWORKER_CONTEXT
- RULE_USE_DATABASE_URL_FOR_ERP_ONLY
- RULE_SQL_REQUIRES_SATO_REVIEW
- RULE_NO_DB_WRITE_WITHOUT_EXPLICIT_GO
- RULE_NO_PUSH_WITHOUT_EXPLICIT_REQUEST
- RULE_UI_PATCH_REQUIRES_UI_CENTERED_TEST
- RULE_SERVER_MUST_BOOT_BEFORE_BROWSER_CHECK
- RULE_COMMONOS_DOES_NOT_OWN_BUSINESS_CANON
- RULE_CX22073JW_NON_AGENTIC_REFERENCE_ONLY
- RULE_AICM_CONSUMES_AIWORKER_DELIVERABLES
- RULE_AIWORKER_OWNS_DELIVERABLE_BODY_SUMMARY_ZIP
- RULE_NO_DEBUG_LEFTOVER
- RULE_MINIMAL_PATCH_SCOPE
- RULE_ROLLBACK_ON_UNSAFE_PATCH_FAILURE

5.6 aiworker.guardrail_scope_binding

目的:
- どのOS/アプリ/作業種別にどのルールを適用するかを管理する

主なカラム案:
- scope_binding_id uuid primary key
- rule_code text not null
- target_os_code text not null
- target_app_code text
- target_work_type_code text
- target_file_pattern text
- applies_to_db_write_flag boolean not null default false
- applies_to_api_post_flag boolean not null default false
- applies_to_ui_flag boolean not null default false
- applies_to_git_flag boolean not null default false
- priority_int int not null default 100
- status_code text not null default active
- created_at timestamptz not null default now()
- updated_at timestamptz not null default now()

5.7 aiworker.guardrail_evidence_link

目的:
- 実行結果、レポート、検証結果とガードレールを結びつける

主なカラム案:
- evidence_link_id uuid primary key
- evidence_code text unique not null
- target_os_code text not null
- target_app_code text
- work_phase_code text
- related_rule_code text
- related_pattern_code text
- related_case_code text
- final_status text
- pass_count int
- warn_count int
- fail_count int
- report_path text
- run_dir text
- patch_flag boolean not null default false
- db_write_flag boolean not null default false
- api_post_flag boolean not null default false
- git_push_flag boolean not null default false
- secret_scan_status_code text
- created_at timestamptz not null default now()

5.8 aiworker.guardrail_runtime_check_result

目的:
- AI実行前チェックの結果を保存する
- block / warn / review required を記録する

主なカラム案:
- runtime_check_result_id uuid primary key
- request_id text
- target_os_code text not null
- target_app_code text
- target_work_type_code text not null
- check_status_code text not null
- blocking_flag boolean not null default false
- review_required_flag boolean not null default false
- confirmation_required_flag boolean not null default false
- ui_test_required_flag boolean not null default false
- matched_rule_codes text[]
- matched_pattern_codes text[]
- check_summary_text text
- required_next_action_text text
- created_at timestamptz not null default now()

check_status_code:
- pass
- warn
- blocked
- review_required
- confirmation_required
- insufficient_context

5.9 aiworker.guardrail_candidate_intake

目的:
- 新しいミス、気づき、ユーザー指摘を候補として受ける
- 人間レビュー後に正式ルール化する

主なカラム案:
- candidate_intake_id uuid primary key
- candidate_code text unique not null
- source_type_code text not null
- source_text text not null
- suggested_category_code text
- suggested_severity_code text
- suggested_rule_text text
- suggested_prevention_text text
- review_status_code text not null default pending
- reviewer_note text
- promoted_rule_code text
- promoted_case_code text
- created_at timestamptz not null default now()
- updated_at timestamptz not null default now()

source_type_code:
- user_instruction
- execution_failure
- report_warning
- ai_self_check
- manual_review
- handoff_note

review_status_code:
- pending
- accepted
- rejected
- merged
- needs_more_context

============================================================
6. カテゴリ設計
============================================================

mistake_category_code / category_code:
- code_patch
- db
- api
- ui
- server
- artifact
- git
- file_path
- termux_environment
- responsibility_boundary
- security
- secret
- report
- handoff
- test
- commonos
- aiworker_runtime
- aicm
- cx_reference
- erp
- external_action

severity_code:
- info
- caution
- warn
- stop
- critical

status_code:
- active
- inactive
- deprecated
- replaced
- draft

============================================================
7. 実行前参照フロー
============================================================

AIWorkerOS が作業依頼を受けたら、最初に以下を行う。

1. 作業対象を分類する
2. guardrail_scope_binding から適用ルールを取得する
3. guardrail_failure_pattern から該当しそうな失敗パターンを取得する
4. guardrail_mistake_case から類似ミス事例を取得する
5. guardrail_preflight_template から作業前チェックを生成する
6. 危険条件があれば停止する
7. 問題なければ作業開始
8. 作業後に guardrail_evidence_link / guardrail_runtime_check_result へ証跡保存
9. 新しいミスや注意点は guardrail_candidate_intake へ候補登録

停止条件:
- DB_WRITEなのに明示GOがない
- SQLなのに佐藤レビューがない
- pushなのにユーザー明示依頼がない
- UI修正なのにUI確認計画がない
- 実コード/dump未確認のパッチ
- 責務境界をまたぐ修正
- secret出力リスクあり
- 危険SQL含有

============================================================
8. 連携方針
============================================================

AICM:
- consumer
- 作業前チェック結果を表示
- 停止理由を表示
- 実行証跡を表示
- ガードレール正本は持たない

CX22073JW:
- 背景説明
- 過去設計思想
- 用語説明
- 参照資料
- ロボット補助知識
- 判定本体や実行主体にはしない

CommonOS:
- 表示共通化のみ
- GuardrailStatusBanner
- PreflightChecklistPanel
- BlockingReasonList
- RequiredActionPanel
- EvidenceSummaryCard
- RuleReferenceDrawer
- RuntimeCheckResultTable
- 判定本体は持たない

============================================================
9. 初期seed候補
============================================================

重要ルール:
- RULE_NO_GUESS_PATCH
- RULE_DUMP_BEFORE_PATCH
- RULE_NO_TMP_ON_TERMUX
- RULE_SQL_REQUIRES_SATO_REVIEW
- RULE_NO_DB_WRITE_WITHOUT_EXPLICIT_GO
- RULE_NO_PUSH_WITHOUT_EXPLICIT_REQUEST
- RULE_UI_PATCH_REQUIRES_UI_CENTERED_TEST
- RULE_SERVER_MUST_BOOT_BEFORE_BROWSER_CHECK
- RULE_MINIMAL_PATCH_SCOPE
- RULE_NO_DEBUG_LEFTOVER
- RULE_CX22073JW_NON_AGENTIC_REFERENCE_ONLY
- RULE_AICM_CONSUMES_AIWORKER_DELIVERABLES
- RULE_AIWORKER_OWNS_DELIVERABLE_BODY_SUMMARY_ZIP

重要ミス事例:
- PATCH_TOO_BROAD_FUNCTION_REPLACE
- GUESS_BASED_PATCH_WITHOUT_DUMP
- SERVER_NOT_STARTED_BEFORE_UI_CHECK
- ZIP_METADATA_SUCCESS_BUT_ZERO_BYTE_FILE
- DB_WRITE_WITHOUT_SATO_REVIEW
- PUSH_WITHOUT_VERIFICATION
- RESPONSIBILITY_BOUNDARY_MIXED

============================================================
10. DDLドラフト方針
============================================================

DDLを作る前に必ず以下を行う。

1. 既存 aiworker schema の実体確認
2. 既存 guardrail / policy / safety / audit / evidence 系テーブル有無確認
3. 既存 runtime / evidence / request 系テーブルとの責務重複確認
4. 佐藤レビュー用 NOT_EXECUTED SQL 作成
5. 危険SQLなし確認
6. ユーザー明示GO後にのみ apply
7. apply後 read-only smoke
8. APIやUI接続は別Phase

この設計ファイルの段階ではDDLを適用しない。

============================================================
11. 推奨Phase
============================================================

GKD-0 inventory / dump:
- 既存DB・既存設計との重複確認
- DB_WRITE=NO
- DDL_APPLY=NO
- API_POST=NO
- PATCH=NO
- GIT_PUSH=NO

GKD-1 DDL review draft:
- 佐藤レビュー用DDLを作る
- NOT_EXECUTED SQL
- CREATE TABLE / INDEX / VIEW / COMMENT / RLS方針 draft

GKD-2 DB apply:
- 承認後にDB作成
- PERSONA_DATABASE_URL
- transaction apply
- 失敗時 rollback
- read-only smoke
- REQUIRES_SATO_REVIEW=YES
- REQUIRES_BOSS_GO=YES

GKD-3 initial seed:
- 重要ルール
- 重要ミス事例
- response runbook
- preflight template

GKD-4 AIWorkerOS runtime integration:
- read-only guardrail lookup
- check result作成
- block / warn / review_required 判定
- evidence link作成

GKD-5 AICM display integration:
- AICMはconsumer
- 作業前チェック・停止理由・証跡を表示

GKD-6 candidate intake:
- 新しいミスやユーザー指摘を候補登録
- review status
- promote to rule/case

============================================================
12. 検証方針
============================================================

read-only確認:
- table exists
- view exists
- active rule count
- active pattern count
- active preflight template count
- scope binding count
- recent evidence count

実行前チェック確認ケース:
- UI patch
- DB apply
- API POST
- git push
- CX22073JW data add
- AIWorkerOS artifact generation
- AICM UI patch
- ERP SQL change

期待:
- 適用ルールが返る
- block条件が判定される
- required actionが出る
- evidenceが残る
- secretは出ない

UI確認:
- AICM連携後のみ
- smokeだけで完了にしない

============================================================
13. 完了条件
============================================================

1. 作業ミス事例を登録できる
2. 失敗パターンを登録できる
3. 再発防止runbookを登録できる
4. 作業前チェックテンプレを登録できる
5. OS/アプリ/作業種別ごとに適用ルールを引ける
6. AIWorkerOSが実行前に参照できる
7. block / warn / review_required を判定できる
8. 実行後の証跡を保存できる
9. 新しいミスを候補登録できる
10. AICM等はconsumerとして表示できる
11. CX22073JWを実行主体にしない
12. CommonOSは表示共通部品に限定する

============================================================
14. 次アクション
============================================================

NEXT_PHASE=GKD-0
NEXT_ACTION=AIWorkerOS Guardrail Knowledge DB 既存DB/設計 inventory read-only one-block

実施条件:
- PERSONA_DATABASE_URL を使用
- DB_WRITE=NO
- DDL_APPLY=NO
- API_POST=NO
- PATCH=NO
- GIT_PUSH=NO
- aiworker schema の既存テーブル確認
- guardrail / policy / safety / audit / evidence / runtime 系の既存構造確認
- 重複しないDDL方針を決める
- レポートを900.meta配下に出す

============================================================
15. 保守性メモ
============================================================

- ガードレール正本はAIWorkerOS側に寄せる
- AICMに重複テーブルを作らない
- CX22073JWを実行主体にしない
- CommonOSに判定本体を持たせない
- 既存aiworker構造確認なしにDDLを出さない
- seed前に重複・責務衝突を確認する
- DB適用はGKD-0/GKD-1の後、佐藤レビューと明示GO後のみ
