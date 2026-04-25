# ============================================================
# AICompanyManager OVERVIEW
# ============================================================

app_name: AICompanyManager
display_name: AI企業運営アプリ
category: 03.business-app
phase: Phase A
status: active-design

## 1. App Summary

AICompanyManager は、人間が AI 企業を運営するための business-app である。

人間はアプリから会社方針、事業方針、目標、制約、納品条件を入力する。
AIWorkerOS 側の President / Manager / Leader / Worker パイプラインは、その入力を受け取り、事業計画、部門別アクション、成果物定義、タスク実行、レビュー、統合、納品準備までを進める。

AICompanyManager は以下を担当する。

- 人間による方針入力
- AI企業組織の運用画面
- President / Manager / Leader / Worker の進捗表示
- 成果物レビュー状態の表示
- 差し戻し履歴の表示
- 納品前承認
- 人間への最終納品
- 操作履歴、承認履歴、納品履歴の管理
- offline-first UI と queue 表示

## 2. Non-Goal

AICompanyManager は、AI 社員の人格、能力、成長差分、内部推論、シリーズ傾向、実行知能を直接保有しない。

それらは AIWorkerOS 側の責務である。

AICompanyManager は、AIWorkerOS の内部パイプラインを business-app として人間が操作できるようにする運用アプリであり、AIWorkerOS の正本を複製しない。

## 3. Core Concept

人間が方針を出す。
President が事業計画に変換する。
Manager が部門・領域別の実行方針に分解する。
Leader が成果物とタスクへ分解する。
Worker がタスクを実施して成果物を作成する。
Leader が成果物をレビューし、統合する。
Manager が部門成果として確認する。
President が全体成果を確認する。
人間が最終承認し、納品物を受け取る。

## 4. Canonical Flow

Human
→ President
→ Manager
→ Leader
→ Worker
→ Leader Review
→ Manager Integration Review
→ President Final Review
→ Human Approval
→ Delivery

## 5. Design Policy

- BusinessOS 側は運用・契約・人間向け UI を担当する
- AIWorkerOS 側は AI 社員実体・内部パイプライン・AI実行を担当する
- CommonOS は UI、shell、list/detail/form、sync presentation、queue presentation に利用する
- 業務正本、承認、納品履歴は BusinessOS 側に残す
- AI成長差分、AI社員内部実行ログ、シリーズ傾向は AIWorkerOS 側に残す
