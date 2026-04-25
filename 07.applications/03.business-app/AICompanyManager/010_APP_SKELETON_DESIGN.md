# ============================================================
# AICompanyManager APP SKELETON DESIGN
# ============================================================

app_name: AICompanyManager
display_name: AI企業運営アプリ
category: 03.business-app
phase: Phase A
status: initial-skeleton-fixed

## 1. Purpose

本書は AICompanyManager のアプリ骨格を定義する。

AICompanyManager は、人間が AI 企業を作り、方針を渡し、AI 組織に事業を実行させ、成果物をレビューし、納品を受けるための business-app である。

## 2. Primary Users

- AI 企業を運営する人間ユーザー
- 事業方針を作成する人間ユーザー
- 成果物の最終確認を行う人間ユーザー
- AI 社員チームを契約・運用する法人または個人事業者

## 3. Main Screens

### 3.1 Company Dashboard

目的:
- AI 企業全体の状態を表示する

表示項目:
- 会社名
- 事業方針
- 進行中プロジェクト
- President 状態
- Manager 状態
- Leader 状態
- Worker 状態
- 差し戻し件数
- 納品待ち件数
- 人間承認待ち件数

### 3.2 Business Policy Input

目的:
- 人間が President に方針を渡す

入力項目:
- 方針タイトル
- 事業目的
- 期待成果
- 期限
- 優先度
- 制約条件
- 禁止事項
- 納品形式
- レビュー厳格度
- 人間承認要否

### 3.3 President Plan View

目的:
- President が生成した事業計画を人間が確認する

表示項目:
- 事業計画概要
- 主要KPI
- 部門分割案
- Manager への配布内容
- リスク
- 人間確認コメント

### 3.4 Manager Action View

目的:
- Manager が事業計画を領域・分野・アクションへ分解した状態を表示する

表示項目:
- 担当 Manager
- 担当領域
- 具体分野
- アクション一覧
- Leader への配布内容
- 期限
- 依存関係

### 3.5 Leader Task View

目的:
- Leader が成果物とタスクへ分解した状態を表示する

表示項目:
- 担当 Leader
- 成果物一覧
- タスク一覧
- Worker 割当
- 進捗
- レビュー状態
- 差し戻し状態

### 3.6 Worker Execution View

目的:
- Worker が実施中のタスクと成果物を表示する

表示項目:
- Worker
- タスク
- 実施状態
- 作成中成果物
- 提出済み成果物
- 差し戻し理由
- 再提出状態

### 3.7 Review Board

目的:
- 成果物レビューと差し戻しを管理する

表示項目:
- 成果物
- 提出元 Worker
- レビュー担当 Leader
- 判定
- 指摘
- 差し戻し理由
- 再提出期限
- レビュー履歴

### 3.8 Delivery Board

目的:
- 統合成果物と人間納品を管理する

表示項目:
- 統合成果物
- Leader 統合状態
- Manager 確認状態
- President 最終確認状態
- 人間承認状態
- 納品形式
- 納品日時
- 納品履歴

## 4. App Modules

| module | responsibility |
|---|---|
| policy_intake | 人間方針入力 |
| company_dashboard | AI企業状態表示 |
| president_operation | President 計画表示 |
| manager_operation | Manager 分解表示 |
| leader_operation | Leader タスク・成果物表示 |
| worker_operation | Worker 実行状態表示 |
| review_board | レビュー・差し戻し管理 |
| delivery_board | 統合・承認・納品管理 |
| audit_log | 操作履歴・承認履歴 |
| aiworker_bridge | AIWorkerOS 連携 |
| commonos_adapter | CommonOS UI / queue 連携 |

## 5. Phase A Scope

Phase A では以下を固定する。

- アプリ目的
- カテゴリ
- 設計ルート
- 主要画面
- President / Manager / Leader / Worker の業務流れ
- レビュー差し戻し
- 統合
- 承認
- 人間納品
- AIWorkerOS 境界
- CommonOS 利用方針

## 6. Out of Scope for Phase A

- DB exact DDL
- API exact payload
- 画面詳細実装
- 課金プラン確定
- AIWorkerOS 内部実行仕様の変更
- 実装ファイル生成
