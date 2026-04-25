# ============================================================
# AICompanyManager Sato DB Review Memo
# ============================================================

app_name: AICompanyManager
display_name: AI企業運営アプリ
phase: Phase C
reviewer: 佐藤（DB担当）
status: review-memo-created

## 1. Review Summary

AICompanyManager は BusinessOS の business-app である。
DB正本は人間向けの事業運用・承認・納品・履歴である。
AIWorkerOS の AI社員実体と内部パイプライン正本は複製しない。

## 2. Sato Review Focus

佐藤（DB担当）は以下を重点確認する。

### 2.1 Boundary

- business schema に置く範囲は妥当か
- aiworker schema または AIWorkerOS 側に残すべきものを複製していないか
- aiworker_run_ref は参照IDとして十分か

### 2.2 Table Design

- company / project / policy / pipeline_run の分離は妥当か
- deliverable と review と return_request の分離は妥当か
- approval と delivery の分離は妥当か
- audit_log が十分な証跡になるか
- queue_item をDBに置く方針が妥当か

### 2.3 Safety

- additive-only で適用できるか
- create if not exists のみで安全か
- 既存データに影響しないか
- external FK を張らない初期方針でよいか

### 2.4 RLS

- owner_user_id 直接方式でよいか
- project ownership 派生方式にするか
- audit_log は append-only にするか
- queue_item は owner_user_id のみでよいか
- system / bridge actor の書き込み経路をどう分けるか

### 2.5 Index

- project_status / run_status / review_status / delivery_status は十分か
- created_at desc index は必要か
- aiworker_run_ref index は必要か
- audit_log の action_code index は必要か

## 3. Initial Sato Recommendation Placeholder

review_result: pending

recommended_action:
- Review DDL candidate
- Decide FK strategy
- Decide RLS exact policy
- Decide whether enum CHECK constraints are needed
- After review OK, prepare Phase D psql apply one-block
