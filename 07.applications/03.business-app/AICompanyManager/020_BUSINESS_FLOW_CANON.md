# ============================================================
# AICompanyManager BUSINESS FLOW CANON
# ============================================================

app_name: AICompanyManager
display_name: AI企業運営アプリ
phase: Phase A
status: canonical-flow-initialized

## 1. Purpose

本書は AICompanyManager における事業フローの正本を定義する。

## 2. Canonical Business Flow

### Step 1: Human Policy Input

人間がアプリから方針を入力する。

入力内容:
- 何を達成したいか
- 何を作るか
- 誰向けか
- 期限
- 予算または作業上限
- 納品形式
- 禁止事項
- 品質基準
- レビュー方針

出力:
- business_policy

次工程:
- President へ配布

### Step 2: President Creates Business Plan

President は人間の方針を受け取り、事業計画を作成する。

President の責務:
- 方針の解釈
- 事業目的の整理
- 成果物の大枠定義
- 部門または領域への分割
- Manager への指示作成
- 優先度とリスク整理

出力:
- business_plan
- manager_directives

次工程:
- Manager へ配布

### Step 3: Manager Defines Areas and Actions

Manager は President から受け取った事業計画と、自身に設定された部門・領域をもとに、具体分野とアクションを決める。

Manager の責務:
- 担当領域の理解
- 分野の確定
- アクションの作成
- Leader への配布単位の作成
- 依存関係の整理
- 進捗管理単位の定義

出力:
- area_action_plan
- leader_directives

次工程:
- Leader へ配布

### Step 4: Leader Defines Deliverables and Tasks

Leader は Manager から受け取った分野とアクションをもとに、成果物とタスクを定義する。

Leader の責務:
- 成果物定義
- 成果物の品質基準定義
- タスク分解
- Worker 割当
- レビュー観点定義
- 完了条件定義

出力:
- deliverable_plan
- worker_tasks
- review_criteria

次工程:
- Worker へ配布

### Step 5: Worker Executes Tasks

Worker は Leader から受け取ったタスクを実施し、成果物を作成する。

Worker の責務:
- タスク実行
- 成果物作成
- 実施ログ作成
- 不明点・リスク報告
- 成果物提出

出力:
- worker_output
- execution_log
- issue_report

次工程:
- Leader へ提出

## 3. Flow Summary

Human
→ business_policy
→ President
→ business_plan
→ Manager
→ area_action_plan
→ Leader
→ deliverable_plan
→ Worker
→ worker_output
→ Leader Review

## 4. Canonical Status Values

| status | meaning |
|---|---|
| draft | 人間が方針を作成中 |
| submitted_to_president | President へ送信済み |
| president_planning | President が事業計画作成中 |
| manager_planning | Manager が領域・アクション作成中 |
| leader_planning | Leader が成果物・タスク作成中 |
| worker_executing | Worker がタスク実行中 |
| leader_reviewing | Leader がレビュー中 |
| manager_reviewing | Manager が統合確認中 |
| president_reviewing | President が最終確認中 |
| human_approval_waiting | 人間承認待ち |
| delivered | 納品済み |
| cancelled | 中止 |

## 5. Canonical Rule

AICompanyManager は、流れの状態、承認、納品、履歴を管理する。
AIWorkerOS は、President / Manager / Leader / Worker の内部実行を担当する。
