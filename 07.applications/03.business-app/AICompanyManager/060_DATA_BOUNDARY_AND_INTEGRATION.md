# ============================================================
# AICompanyManager DATA BOUNDARY AND INTEGRATION
# ============================================================

app_name: AICompanyManager
display_name: AI企業運営アプリ
phase: Phase A
status: boundary-initialized

## 1. Purpose

本書は AICompanyManager、BusinessOS、AIWorkerOS、CommonOS の責務境界を定義する。

## 2. Canonical Ownership

| area | owner | note |
|---|---|---|
| AI企業運営アプリ UI | AICompanyManager | business-app として提供 |
| 人間方針入力 | AICompanyManager | business-side operation record |
| 事業案件状態 | AICompanyManager / BusinessOS | 人間向け運用正本 |
| 承認履歴 | AICompanyManager / BusinessOS | 人間承認の証跡 |
| 納品履歴 | AICompanyManager / BusinessOS | business delivery record |
| AI社員実体 | AIWorkerOS | President / Manager / Leader / Worker |
| AI社員内部パイプライン | AIWorkerOS | 実行・分解・生成・レビュー判断 |
| AI成長差分 | AIWorkerOS | app側へ複製しない |
| AIシリーズ傾向 | AIWorkerOS | app側へ複製しない |
| Common UI | CommonOS | shared foundation |
| Queue presentation | CommonOS | 意味は app 側 |
| Queue business meaning | AICompanyManager | 業務状態として解釈 |

## 3. BusinessOS Side Data Candidate

Phase A 時点では exact DDL は固定しないが、BusinessOS 側候補は以下。

- ai_company
- ai_company_project
- ai_company_policy
- ai_company_pipeline_run
- ai_company_role_assignment
- ai_company_deliverable
- ai_company_review
- ai_company_return
- ai_company_approval
- ai_company_delivery
- ai_company_audit_log

## 4. AIWorkerOS Side Data Candidate

AIWorkerOS 側に置くべき候補。

- ai worker identity
- ai worker role profile
- President / Manager / Leader / Worker pipeline execution
- role internal decision logs
- model behavior profile
- growth delta
- series tendency
- worker capability profile
- AI-side review reasoning

## 5. Integration Direction

AICompanyManager から AIWorkerOS へ渡す。

- business_policy
- company_context
- delivery_requirement
- review_policy
- run_request
- revision_request

AIWorkerOS から AICompanyManager へ返す。

- pipeline_status
- business_plan
- manager_action_plan
- leader_task_plan
- worker_output
- review_result
- integrated_output
- final_review_summary
- delivery_candidate

## 6. Forbidden Duplication

AICompanyManager は以下を持たない。

- AI社員の人格正本
- AI社員の成長正本
- AIWorkerOS の内部実行正本
- AIシリーズ傾向正本
- AI内部判断プロンプト正本
- AIWorkerOS 側 secret
- AIWorkerOS 側 service role key

## 7. Canonical Rule

AICompanyManager は、AIWorkerOS を操作可能にする business-app である。
AIWorkerOS の中身を BusinessOS に複製するアプリではない。
