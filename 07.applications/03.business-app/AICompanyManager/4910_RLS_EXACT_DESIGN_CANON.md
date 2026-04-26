# AICompanyManager RLS Exact Design Canon

phase: Phase AZ
status: rls-exact-design-canon
reviewer: 佐藤（DB担当）
rls_apply: false

## 1. RLS基本方針

AICompanyManager のRLSは company_id を主境界にする。

補助境界:
- department_id
- organization_id
- actor_user_id
- service role

## 2. company_id境界

原則:
- ユーザーは自分が所属・管理できる company_id のデータだけ読める
- company_id を持つ全テーブルは company_id で制限する

対象:
- ai_company_manager_company_rule_file
- ai_company_manager_department
- ai_company_manager_organization
- ai_company_manager_organization_robot_assignment
- ai_company_manager_department_task_ledger
- ai_company_manager_task_file_metadata
- ai_company_manager_csv_import_batch
- ai_company_manager_ai_workflow_run
- ai_company_manager_review_item
- ai_company_manager_delivery_candidate

## 3. department_id境界

部門別タスク台帳は department_id でも絞れる。

用途:
- 部門単位の台帳閲覧
- 部門単位のレビュー確認
- 部門単位のCSV取込

## 4. organization_id境界

organization_id はロボット配置の主境界。

用途:
- 組織詳細
- ロボット配置表示
- ロボット配置変更

## 5. service role境界

AI自動処理は通常ユーザー操作ではない。

AI自動処理が書き込む候補:
- ai_workflow_run
- ai_workflow_step
- delivery_candidate
- review_item

本番では service role または安全なRPC経由で書き込む。

## 6. ユーザー操作対象

ユーザーが操作する対象:
- AI企業設定
- AI企業新規追加
- 部門追加
- 部門詳細での変更/削除
- 組織追加
- 組織詳細での変更/削除/ロボット配置
- 部門別タスク台帳
- CSV操作
- レビュー承認/差し戻し

## 7. ユーザー通常操作対象外

ユーザーは通常操作しない:
- Manager分解
- Leader割当
- Worker成果物作成
- AI自動レビュー

これらは workflow table に状態・ログとして保持する。
