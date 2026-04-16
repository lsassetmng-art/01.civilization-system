# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# MONEY PLANNER DASHBOARD ALERT REQUIRED / NULLABLE MATRIX
# ============================================================

status: canonical-draft
system: MoneyPlanner
layer: 120.implementation
subdomain: api

rule_definitions:
  optional_omit_only:
    - 未指定時は key を送らない
  required:
    - key 必須
    - null 不可
  fixed_key_nonnull:
    - response key 固定
    - null 不可
  fixed_key_nullable:
    - response key 固定
    - null 可

endpoints:

  GET_/v1/money-planner/alerts:
    query:
      severity:
        type: string
        rule: optional_omit_only
      alert_type:
        type: string
        rule: optional_omit_only
    response_item:
      alert_id:
        type: uuid
        rule: fixed_key_nonnull
      alert_type:
        type: string
        rule: fixed_key_nonnull
      severity:
        type: string
        rule: fixed_key_nonnull
      target_month:
        type: string|null
        rule: fixed_key_nullable
      related_goal_id:
        type: uuid|null
        rule: fixed_key_nullable
      related_event_budget_id:
        type: uuid|null
        rule: fixed_key_nullable
      related_candidate_registry_id:
        type: uuid|null
        rule: fixed_key_nullable
      title:
        type: string
        rule: fixed_key_nonnull
      message:
        type: string
        rule: fixed_key_nonnull
      acknowledged_flag:
        type: boolean
        rule: fixed_key_nonnull
      created_at:
        type: iso8601
        rule: fixed_key_nonnull

  PATCH_/v1/money-planner/alerts/{alert_id}/acknowledge:
    request:
      acknowledged_flag:
        type: boolean
        rule: required
    response:
      alert_id:
        type: uuid
        rule: fixed_key_nonnull
      acknowledged_flag:
        type: boolean
        rule: fixed_key_nonnull
      acknowledged_at:
        type: iso8601
        rule: fixed_key_nonnull
