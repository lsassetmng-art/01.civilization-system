# AICompanyManager Actor Access Boundary Canon

phase: Phase AZ
status: actor-access-boundary-canon
reviewer: 佐藤（DB担当）
db_apply: false
rls_apply: false

## 1. actor種別

想定actor:

- owner_user
- company_admin
- department_manager_user
- reviewer_user
- readonly_user
- service_role_ai_worker

## 2. owner_user

できること:
- company作成
- company変更/削除
- company common rules管理
- department管理
- organization管理
- robot assignment管理
- task ledger管理
- CSV import
- review approval/reject

## 3. company_admin

できること:
- 対象companyの閲覧
- 対象companyの部門/組織管理
- 対象companyの台帳管理
- 対象companyのレビュー承認

## 4. department_manager_user

できること:
- 対象departmentの台帳閲覧/追加/変更
- 対象departmentのCSV import
- 対象departmentのreview閲覧

制限:
- company設定変更は不可
- 他departmentは不可

## 5. reviewer_user

できること:
- review item閲覧
- review approve/reject/request_revision

制限:
- company設定変更は不可
- department/organization管理は不可

## 6. readonly_user

できること:
- 許可されたcompany/departmentの閲覧

制限:
- 書き込み不可

## 7. service_role_ai_worker

できること:
- workflow_run作成/更新
- workflow_step作成/更新
- delivery_candidate作成/更新
- review_item作成
- ledger status更新候補

制限:
- company common rulesの通常変更は不可
- user approval履歴の偽装不可

## 8. membership table 候補

RLSには actor membership table が必要。

候補:
- business.ai_company_manager_actor_membership

最小カラム:
- membership_id uuid primary key
- company_id uuid not null
- department_id uuid null
- organization_id uuid null
- actor_user_id uuid not null
- actor_role text not null
- membership_status text not null default 'active'
- created_at timestamptz not null default now()

actor_role:
- owner_user
- company_admin
- department_manager_user
- reviewer_user
- readonly_user

注意:
- service_role_ai_worker は membership table ではなく service role / RPC で扱う候補
