# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# MONEY PLANNER FAMILY SHARING REQUIRED / NULLABLE MATRIX
# ============================================================

status: canonical-draft
system: MoneyPlanner
layer: 120.implementation
subdomain: api

rule_definitions:
  required:
    - key 必須
    - null 不可
  optional_omit_only:
    - 未指定時は key を送らない
  fixed_key_nonnull:
    - response key 固定
    - null 不可
  fixed_key_nullable:
    - response key 固定
    - null 可

endpoints:

  GET_/v1/money-planner/sharing/members:
    query:
      status:
        type: string
        rule: optional_omit_only
      role:
        type: string
        rule: optional_omit_only
    response_item:
      shared_member_id:
        type: uuid
        rule: fixed_key_nonnull
      plan_id:
        type: uuid
        rule: fixed_key_nonnull
      user_ref:
        type: string
        rule: fixed_key_nonnull
      display_name:
        type: string
        rule: fixed_key_nonnull
      role:
        type: string
        rule: fixed_key_nonnull
      visibility_scope:
        type: string
        rule: fixed_key_nonnull
      invited_at:
        type: iso8601
        rule: fixed_key_nonnull
      accepted_at:
        type: iso8601|null
        rule: fixed_key_nullable
      status:
        type: string
        rule: fixed_key_nonnull
      visible_summary:
        type: object|null
        rule: fixed_key_nullable

  POST_/v1/money-planner/sharing/members:
    request:
      user_ref:
        type: string
        rule: required
      display_name:
        type: string
        rule: required
      role:
        type: string
        rule: required
      visibility_scope:
        type: string
        rule: required
    response:
      shared_member_id:
        type: uuid
        rule: fixed_key_nonnull
      invited_at:
        type: iso8601
        rule: fixed_key_nonnull
      status:
        type: string
        rule: fixed_key_nonnull

  PATCH_/v1/money-planner/sharing/members/{shared_member_id}:
    request:
      role:
        type: string
        rule: optional_omit_only
      visibility_scope:
        type: string
        rule: optional_omit_only
    response:
      shared_member_id:
        type: uuid
        rule: fixed_key_nonnull
      role:
        type: string
        rule: fixed_key_nonnull
      visibility_scope:
        type: string
        rule: fixed_key_nonnull
      updated_at:
        type: iso8601
        rule: fixed_key_nonnull

  DELETE_/v1/money-planner/sharing/members/{shared_member_id}:
    response:
      shared_member_id:
        type: uuid
        rule: fixed_key_nonnull
      status:
        type: string
        rule: fixed_key_nonnull
      removed_at:
        type: iso8601
        rule: fixed_key_nonnull

  GET_/v1/money-planner/sharing/members/{shared_member_id}/visible-summary:
    response:
      shared_member_id:
        type: uuid
        rule: fixed_key_nonnull
      role:
        type: string
        rule: fixed_key_nonnull
      visibility_scope:
        type: string
        rule: fixed_key_nonnull
      visible_income_count:
        type: integer
        rule: fixed_key_nonnull
      visible_expense_count:
        type: integer
        rule: fixed_key_nonnull
      visible_asset_count:
        type: integer
        rule: fixed_key_nonnull
      visible_liability_count:
        type: integer
        rule: fixed_key_nonnull
      visible_saving_goal_count:
        type: integer
        rule: fixed_key_nonnull
      visible_event_budget_count:
        type: integer
        rule: fixed_key_nonnull
      visible_memo_count:
        type: integer
        rule: fixed_key_nonnull
      calculated_at:
        type: iso8601
        rule: fixed_key_nonnull
