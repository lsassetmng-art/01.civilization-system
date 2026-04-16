# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# MONEY PLANNER RECEIVE CANDIDATE REQUIRED / NULLABLE MATRIX
# ============================================================

status: canonical-draft
system: MoneyPlanner
layer: 120.implementation
subdomain: api

request_rule_definitions:
  required:
    - key 必須
    - null 不可
  required_nullable:
    - key 必須
    - null 可
  optional_omit_only:
    - 未指定時は key を送らない
  fixed_key_nonnull:
    - response key 固定
    - null 不可
  fixed_key_nullable:
    - response key 固定
    - null 可

endpoints:

  GET_/v1/money-planner/receive-candidates:
    query:
      page:
        type: integer
        rule: optional_omit_only
      page_size:
        type: integer
        rule: optional_omit_only
      source_system:
        type: string
        rule: optional_omit_only
      import_status:
        type: string
        rule: optional_omit_only
      candidate_type:
        type: string
        rule: optional_omit_only
      duplicate_only:
        type: boolean
        rule: optional_omit_only
    response_item:
      candidate_registry_id:
        type: uuid
        rule: fixed_key_nonnull
      plan_id:
        type: uuid
        rule: fixed_key_nonnull
      source_system:
        type: string
        rule: fixed_key_nonnull
      source_case_id:
        type: uuid_or_string
        rule: fixed_key_nonnull
      source_object_id:
        type: uuid_or_string
        rule: fixed_key_nonnull
      candidate_type:
        type: string
        rule: fixed_key_nonnull
      title_or_name:
        type: string
        rule: fixed_key_nonnull
      planned_date_or_target_date:
        type: yyyy-mm-dd|null
        rule: fixed_key_nullable
      amount:
        type: decimal_string|null
        rule: fixed_key_nullable
      currency_code:
        type: string|null
        rule: fixed_key_nullable
      import_status:
        type: string
        rule: fixed_key_nonnull
      duplicate_candidate_flag:
        type: boolean
        rule: fixed_key_nonnull
      duplicate_reference_object_id:
        type: uuid|null
        rule: fixed_key_nullable
      mapped_target_object_id:
        type: uuid|null
        rule: fixed_key_nullable
      default_visibility_scope:
        type: string
        rule: fixed_key_nonnull
      received_at:
        type: iso8601
        rule: fixed_key_nonnull
      reviewed_at:
        type: iso8601|null
        rule: fixed_key_nullable

  GET_/v1/money-planner/receive-candidates/{candidate_registry_id}:
    response:
      candidate_registry_id:
        type: uuid
        rule: fixed_key_nonnull
      plan_id:
        type: uuid
        rule: fixed_key_nonnull
      source_system:
        type: string
        rule: fixed_key_nonnull
      source_case_id:
        type: uuid_or_string
        rule: fixed_key_nonnull
      source_object_id:
        type: uuid_or_string
        rule: fixed_key_nonnull
      candidate_type:
        type: string
        rule: fixed_key_nonnull
      import_status:
        type: string
        rule: fixed_key_nonnull
      duplicate_candidate_flag:
        type: boolean
        rule: fixed_key_nonnull
      duplicate_reference_object_id:
        type: uuid|null
        rule: fixed_key_nullable
      mapped_target_object_id:
        type: uuid|null
        rule: fixed_key_nullable
      default_visibility_scope:
        type: string
        rule: fixed_key_nonnull
      review_note:
        type: string|null
        rule: fixed_key_nullable
      payload_snapshot:
        type: object
        rule: fixed_key_nonnull
      mapped_target_summary:
        type: object
        rule: fixed_key_nonnull
      duplicate_reference_summary:
        type: object|null
        rule: fixed_key_nullable
      received_at:
        type: iso8601
        rule: fixed_key_nonnull
      reviewed_at:
        type: iso8601|null
        rule: fixed_key_nullable
      created_at:
        type: iso8601
        rule: fixed_key_nonnull
      updated_at:
        type: iso8601
        rule: fixed_key_nonnull

  PATCH_/v1/money-planner/receive-candidates/{candidate_registry_id}/status:
    request:
      import_status:
        type: string
        rule: required
      review_note:
        type: string|null
        rule: required_nullable
    response:
      candidate_registry_id:
        type: uuid
        rule: fixed_key_nonnull
      previous_status:
        type: string
        rule: fixed_key_nonnull
      current_status:
        type: string
        rule: fixed_key_nonnull
      reviewed_at:
        type: iso8601|null
        rule: fixed_key_nullable
      mapped_target_object_id:
        type: uuid|null
        rule: fixed_key_nullable

  PATCH_/v1/money-planner/receive-candidates/{candidate_registry_id}/visibility:
    request:
      visibility_scope:
        type: string
        rule: required
    response:
      candidate_registry_id:
        type: uuid
        rule: fixed_key_nonnull
      visibility_scope:
        type: string
        rule: fixed_key_nonnull
      updated_at:
        type: iso8601
        rule: fixed_key_nonnull

  GET_/v1/money-planner/receive-candidates/{candidate_registry_id}/duplicate-reference:
    response:
      duplicate_candidate_flag:
        type: boolean
        rule: fixed_key_nonnull
      duplicate_reference_object_id:
        type: uuid|null
        rule: fixed_key_nullable
      duplicate_reference_object_type:
        type: string|null
        rule: fixed_key_nullable
      reference_summary:
        type: object|null
        rule: fixed_key_nullable
