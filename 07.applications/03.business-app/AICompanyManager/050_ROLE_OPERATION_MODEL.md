# ============================================================
# AICompanyManager ROLE OPERATION MODEL
# ============================================================

app_name: AICompanyManager
display_name: AI企業運営アプリ
phase: Phase A
status: role-operation-model-initialized

## 1. Purpose

本書は AICompanyManager から見た President / Manager / Leader / Worker の操作モデルを定義する。

## 2. Role Overview

| role | app-facing responsibility | canonical owner |
|---|---|---|
| President | 人間方針を事業計画へ変換し、最終確認する | AIWorkerOS |
| Manager | 事業計画を領域・分野・アクションへ分解する | AIWorkerOS |
| Leader | アクションを成果物・タスクへ分解し、レビュー・統合する | AIWorkerOS |
| Worker | タスクを実施して成果物を作成する | AIWorkerOS |
| Human | 方針入力、最終承認、納品受領 | BusinessOS app user |

## 3. President

### 3.1 Inputs

- business_policy
- human_constraints
- delivery_requirements
- review_policy

### 3.2 Outputs

- business_plan
- manager_directives
- president_final_review
- human_delivery_summary

### 3.3 App Display

AICompanyManager では President の以下を表示する。

- 計画中
- Manager 配布済み
- Manager 成果確認中
- 最終確認中
- 人間承認待ち
- 差し戻し判断中

## 4. Manager

### 4.1 Inputs

- business_plan
- manager_directives
- assigned_domain

### 4.2 Outputs

- area_action_plan
- leader_directives
- manager_review_summary
- manager_return_comment

### 4.3 App Display

- 担当領域
- 分野
- アクション
- Leader 配布状況
- 進捗
- 統合確認
- 差し戻し

## 5. Leader

### 5.1 Inputs

- area_action_plan
- leader_directives
- assigned_action

### 5.2 Outputs

- deliverable_plan
- worker_tasks
- review_criteria
- leader_integrated_output
- leader_review_summary

### 5.3 App Display

- 成果物定義
- タスク定義
- Worker 割当
- レビュー状態
- 差し戻し状態
- 統合状態

## 6. Worker

### 6.1 Inputs

- worker_task
- review_criteria
- delivery_format

### 6.2 Outputs

- worker_output
- execution_log
- issue_report
- revised_output

### 6.3 App Display

- タスク名
- 進行状態
- 成果物
- 差し戻し理由
- 再提出状態
- 完了状態

## 7. Human

### 7.1 Inputs

- business_policy
- approval_decision
- revision_request

### 7.2 Outputs

- policy_submission
- final_approval
- delivery_acceptance
- revision_instruction

## 8. Canonical Boundary

AICompanyManager はロールの運用状態を表示し、人間の操作を受け付ける。
各ロールの内部知能、人格、成長、シリーズ傾向、判断ロジックは AIWorkerOS が持つ。
