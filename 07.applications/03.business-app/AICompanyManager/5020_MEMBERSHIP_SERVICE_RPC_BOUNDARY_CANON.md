# AICompanyManager Membership / Service Role / RPC Boundary Canon

phase: Phase BB
status: membership-service-rpc-boundary-canon
reviewer: 佐藤（DB担当）
db_apply: false
rls_apply: false

## 1. membership 正本候補

table:
- business.ai_company_manager_actor_membership

目的:
- ユーザーがどのAI企業・部門・組織を操作できるかを判定する

最小項目:
- membership_id
- company_id
- department_id
- organization_id
- actor_user_id
- actor_role
- membership_status
- created_at

## 2. actor_role

owner_user:
- company作成者
- 全操作可

company_admin:
- 対象companyの管理操作可

department_manager_user:
- 対象departmentの台帳操作可

reviewer_user:
- レビュー承認/差し戻し可

readonly_user:
- 閲覧のみ

## 3. service role AI worker

service_role_ai_worker は membership table に通常入れない。

扱い:
- server-side function
- service role
- secure RPC
- audit log

## 4. RPC候補

後続Phaseで作る候補:

- business.aicm_create_company_with_owner()
- business.aicm_import_department_task_csv()
- business.aicm_start_ai_workflow()
- business.aicm_create_delivery_candidate()
- business.aicm_create_review_item_from_ai()
- business.aicm_approve_review_item()
- business.aicm_reject_review_item()
- business.aicm_request_review_revision()

## 5. RPCで守るべきもの

- company作成とowner membership作成を同一transactionにする
- CSV importでbatch/row/ledger/file metadataを一貫作成する
- AI workflow が勝手に人間承認を作らない
- review_action は人間操作の履歴として残す
- delivery_candidate と review_item の対応を崩さない

## 6. RLSとRPCの分担

RLS:
- 直接テーブルアクセス時の境界

RPC:
- 複数テーブル更新
- 監査が必要な処理
- AI自動処理
- 承認/差し戻し
