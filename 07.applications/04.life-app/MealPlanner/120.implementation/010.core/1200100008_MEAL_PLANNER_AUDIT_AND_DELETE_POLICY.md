# MealPlanner Audit And Delete Policy

## 1. purpose
MealPlanner の audit 列、更新規則、削除規則を exact に固定する。

## 2. common_audit_columns
原則として主要テーブルに以下を持つ
- created_at
- updated_at

必要に応じて追加
- created_by_user_id
- recorded_by_user_id
- generated_at
- requested_at
- reviewed_at
- checked_at

## 3. audit_rules
- created_at:
  - insert 時に server が設定
  - update 時に変更しない
- updated_at:
  - update 時に server が更新
- created_by_user_id:
  - client 指定可だが server 検証必須
- recorded_by_user_id:
  - server が session から補完してよい
- requested_at / reviewed_at / checked_at / generated_at:
  - server_managed

## 4. delete_policy
MealPlanner は原則 hard delete を避ける。
実態に応じて以下を適用する。

### soft_delete_preferred_tables
- family_member_preference:
  - is_active=false 推奨
- meal_template:
  - is_active=false 推奨
- user_menu:
  - 公開/履歴整合のため論理削除推奨
- optional_household_entitlement_cache:
  - 期限管理で上書き推奨

### hard_delete_allowed_tables
- pantry_item:
  - 在庫誤登録は hard delete 可
- shopping_list_item:
  - 再生成前提で hard delete 可
- meal_template_slot:
  - template 再構成時 hard delete 可
- user_menu_ingredient:
  - user_menu 編集時差し替え hard delete 可
- reference_cache tables:
  - cache refresh 時 hard delete 可

### immutable_or_careful_delete_tables
- meal_history:
  - hard delete 原則禁止
- meal_plan_export_job:
  - audit観点で保持推奨
- user_menu_publish_request:
  - publish audit 観点で保持推奨

## 5. foreign_key_delete_actions
### recommend_on_delete_restrict
- family_profile -> meal_plan
- family_profile -> user_menu
- meal_plan -> meal_slot
- meal_slot -> meal_history
- user_menu -> user_menu_publish_request

### recommend_on_delete_set_null
- dietary_rule.target_member_id
- shopping_list_item.checked_by_member_id

### recommend_on_delete_cascade
- meal_template -> meal_template_slot
- user_menu -> user_menu_ingredient
- shopping_list -> shopping_list_item

## 6. update_policy
- PK の update は禁止
- household 境界 FK の付け替えは原則禁止
- snapshot text は参照元変更でも保持
- publication_status は publish flow 完了時のみ変更

## 7. retention_policy
- free / paid の履歴閲覧差はアプリ側制御
- DB では meal_history を短期で削除しない
- export_job も短期で削除しない
