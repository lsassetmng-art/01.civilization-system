# ============================================================
# LIFE PLANNER LOGICAL SCHEMA POLICY
# ============================================================

status: draft
system: LifePlanner
layer: 030.model
subfolder: 020.logical-schema
owner: Boss
prepared_by: Zero
schema: life

schema_policy:
  - 保存スキーマは life を唯一の前提とする
  - テーブル名は life_ 接頭辞を付ける
  - 主キーは uuid string 相当の論理IDを前提とする
  - created_at / updated_at を基本監査項目とする
  - 金額は amount_minor + currency_code を正とする
  - 派生値は原則保持しない
  - 画面で必要な集計は derived または view 相当で扱う

naming_policy:
  table_case: snake_case
  column_case: snake_case
  pk_suffix: _id
  fk_rule:
    - 参照先の論理名 + _id を使う

shared_rules:
  - owner_user_id を基本所有者とする
  - family共有は shared_member に集約する
  - センシティブ共有範囲は shared_member 側で制御する
  - 見直し候補は reflection_candidate に保持する
  - 自動反映状態は持たず、pending / applied / dismissed を持つ

derived_not_stored_examples:
  - total_goal_count
  - completed_goal_count
  - next_event_date
  - formatted_total_cost
  - review_needed_count
