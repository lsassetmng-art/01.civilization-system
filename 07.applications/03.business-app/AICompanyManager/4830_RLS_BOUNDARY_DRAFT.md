# AICompanyManager RLS Boundary Draft

phase: Phase AY
status: rls-boundary-draft
db_apply: false
rls_apply: false

## 1. RLS基本方針

RLSは後続Phaseで設計する。

このPhaseでは境界だけ固定する。

## 2. 主な境界キー

候補:

- company_id
- department_id
- organization_id
- actor_user_id

## 3. 会社境界

会社ごとにデータを分離する。

対象:
- company_rule_file
- department
- organization
- organization_robot_assignment
- department_task_ledger
- task_file_metadata
- csv_import_batch
- ai_workflow_run
- review_item
- delivery_candidate

## 4. 部門境界

部門別タスク台帳は department_id で絞れる必要がある。

Manager受領台帳のため、ユーザーの通常操作は部門単位。

## 5. 組織境界

組織はロボット配置の単位。

organization_robot_assignment は organization_id を主な絞り込み対象にする。

## 6. レビュー境界

レビュー・承認待ちは会社・部門単位で絞る。

ユーザー操作は最終承認・差し戻しのみ。

## 7. 後続Phaseで必要なもの

- actor/user/company membership table との接続
- userが操作可能なcompany_id取得方法
- department権限の有無
- admin/system role
- service role経由のAI自動処理
- audit log
