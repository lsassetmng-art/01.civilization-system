# AICompanyManager RLS Refined Review Canon

phase: Phase BA
status: rls-refined-review-canon
reviewer: 佐藤（DB担当）
db_apply: false
rls_apply: false

## 1. RLS主境界

主境界:
- company_id

補助境界:
- department_id
- organization_id
- actor_user_id

## 2. company_idを持つ理由

子テーブルにも company_id を持たせる。

理由:
- RLSで直接 company_id 判定できる
- 一覧取得が軽い
- 会社を複数持つユーザーに対応できる
- company境界が読みやすい

注意:
- company_id / department_id / organization_id の整合は後続で trigger または composite FK を検討する

## 3. actor_membership 方針

AICompanyManager専用の actor_membership 候補を持つ。

候補:
- business.ai_company_manager_actor_membership

役割:
- owner_user
- company_admin
- department_manager_user
- reviewer_user
- readonly_user

## 4. service role 方針

AI自動処理は通常ユーザーではない。

AI自動処理が担当するもの:
- Manager分解
- Leader割当
- Worker成果物作成
- AI自動レビュー
- 納品候補作成
- review_item作成

これらは service role または安全なRPC経由で実行する。

## 5. review_action 方針

review_action は人間の承認/差し戻し履歴。

注意:
- AIが人間承認を偽装してはいけない
- action_type approve / reject / request_revision は actor_user_id を残す
- 履歴は上書き禁止

## 6. 適用前に未確定のもの

- auth.uid() と実ユーザーIDの接続
- company作成時のowner membership自動作成
- service role AI処理のRPC化
- review_action のinsert policy
- workflow_run/step のwrite policy
- updated_at trigger
- company_id整合trigger
