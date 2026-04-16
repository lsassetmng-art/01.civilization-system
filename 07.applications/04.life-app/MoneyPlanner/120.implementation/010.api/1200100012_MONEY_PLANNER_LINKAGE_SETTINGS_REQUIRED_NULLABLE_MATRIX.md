# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# MONEY PLANNER LINKAGE SETTINGS REQUIRED / NULLABLE MATRIX
# ============================================================

status: canonical-draft
system: MoneyPlanner
layer: 120.implementation
subdomain: api

rule_definitions:
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

  GET_/v1/money-planner/linkages:
    response:
      life_planner.enabled:
        type: boolean
        rule: fixed_key_nonnull
      life_planner.share_scope:
        type: string
        rule: fixed_key_nonnull
      life_planner.last_shared_at:
        type: iso8601|null
        rule: fixed_key_nullable
      end_of_life_planner.enabled:
        type: boolean
        rule: fixed_key_nonnull
      end_of_life_planner.share_scope:
        type: string
        rule: fixed_key_nonnull
      end_of_life_planner.last_shared_at:
        type: iso8601|null
        rule: fixed_key_nullable
      inheritance_support.enabled:
        type: boolean
        rule: fixed_key_nonnull
      inheritance_support.share_scope:
        type: string
        rule: fixed_key_nonnull
      inheritance_support.last_shared_at:
        type: iso8601|null
        rule: fixed_key_nullable

  PATCH_/v1/money-planner/linkages/{target_system}:
    request:
      enabled:
        type: boolean
        rule: required
      share_scope:
        type: string
        rule: required
    response:
      target_system:
        type: string
        rule: fixed_key_nonnull
      enabled:
        type: boolean
        rule: fixed_key_nonnull
      share_scope:
        type: string
        rule: fixed_key_nonnull
      updated_at:
        type: iso8601
        rule: fixed_key_nonnull

  POST_/v1/money-planner/linkages/share:
    request:
      target_system:
        type: string
        rule: required
      share_scope:
        type: string
        rule: required
      payload:
        type: object
        rule: required
    response:
      target_system:
        type: string
        rule: fixed_key_nonnull
      share_scope:
        type: string
        rule: fixed_key_nonnull
      shared_at:
        type: iso8601
        rule: fixed_key_nonnull
