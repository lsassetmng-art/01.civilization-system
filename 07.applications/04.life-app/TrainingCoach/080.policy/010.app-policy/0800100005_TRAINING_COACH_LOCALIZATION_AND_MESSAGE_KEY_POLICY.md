# ============================================================
# TRAINING COACH LOCALIZATION AND MESSAGE KEY POLICY
# ============================================================

status: canonical-draft
phase: design-consolidation
system: TrainingCoach
layer: 080.policy
owner: Boss
prepared_by: Zero

purpose:
  - 画面文言、通知文言、安全文言、課金文言の key 命名を固定する
  - locale asset 整理をしやすくする
  - 文字列ハードコードを避ける

key_policy:
  - message key は用途別 prefix を持つ
  - 文言本文ではなく meaning 単位で key を切る
  - 画面固有文言と共通文言を分離する
  - safety 文言は専用群にする

key_prefixes:
  UI:
    pattern: TC_UI_<screen>_<name>
  NOTI:
    pattern: TC_NOTI_<code>_<name>
  SAFE:
    pattern: TC_SAFE_<code>_<name>
  BILLING:
    pattern: TC_BILLING_<name>
  GUIDE:
    pattern: TC_GUIDE_<exercise_or_generic>_<name>
  EMPTY:
    pattern: TC_EMPTY_<screen>_<name>
  ERROR:
    pattern: TC_ERROR_<code>_<name>

initial_key_examples:
  - TC_UI_dashboard_title
  - TC_UI_today_plan_start_button
  - TC_UI_plan_editor_save_button
  - TC_UI_completion_result_title
  - TC_NOTI_TC-NOTI-0001_body
  - TC_NOTI_TC-NOTI-0004_body
  - TC_SAFE_TC_SAFE_001_text
  - TC_SAFE_TC_SAFE_004_text
  - TC_BILLING_premium_plan_name
  - TC_BILLING_premium_feature_bodymetrics
  - TC_EMPTY_today_plan_no_plan
  - TC_ERROR_TC-VAL-0001_message

localization_asset_policy:
  - ja-JP を第一正本とする
  - en は第2波候補
  - 未翻訳時は fallback policy に従う
  - guide title / body も key 経由化可能なものは key 化する

do_not_rules:
  - Java / runtime logic へ日本語直書きしない
  - safety 文言を feature 文言と同列管理しない
  - 同じ意味に複数 key を乱立させない

governance:
  - 新規 message key は ledger 追加対象
  - 削除ではなく deprecated 扱いを優先する
