# AICompanyManager 佐藤（DB担当）RLSレビュー観点

phase: Phase AZ
status: sato-rls-review-notes
reviewer: 佐藤（DB担当）
rls_apply: false

## 1. 重点レビュー

- actor_membership table を AICompanyManager 専用に持つか
- 既存BusinessOS共通membershipがある場合はそれを使うか
- company_id ベースで十分か
- department_manager_user の書き込み範囲が妥当か
- reviewer_user の承認権限が妥当か
- readonly_user をどこまで読ませるか
- service role / AI自動処理をRLS policyで扱うかRPCで扱うか

## 2. policy方針

RLS policy draft は最小案。

本番適用前に以下を決める:
- owner_user の company insert 方法
- company作成直後のmembership自動作成方法
- review_action の監査整合性
- delivery_candidate の書き込み主体
- workflow_run/step の書き込み主体
- service role の運用方法

## 3. DB適用禁止

Bossが明示的に DB OK と言うまで適用禁止。

RLS APPLYも同様に禁止。

## 4. 想定DB

Persona側DB候補:
- PERSONA_DATABASE_URL

ERP側DBではない。
