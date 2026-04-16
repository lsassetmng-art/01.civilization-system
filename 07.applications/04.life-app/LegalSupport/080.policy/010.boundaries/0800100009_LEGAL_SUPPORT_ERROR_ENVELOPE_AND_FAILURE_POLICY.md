# ============================================================
# LEGAL SUPPORT ERROR ENVELOPE AND FAILURE POLICY
# ============================================================

status: draft-formal
system: LegalSupport
layer: policy
subdomain: boundaries
schema: life

purpose:
  - 失敗時 response の形を固定する
  - validation / authorization / state conflict / plan gating の表現を揃える
  - UI が一貫して扱えるようにする

error_envelope:
  action: string
  success: false
  data: null
  message: string
  errors:
    - code: string
      field: string|null
      detail: string|null
  meta: object|null

error_code_registry:

  validation:
    - validation_error
    - required_field_missing
    - invalid_enum_value
    - invalid_date_value
    - invalid_state_value

  authorization:
    - unauthorized
    - forbidden_owner_only
    - forbidden_family_view_only
    - forbidden_membership_inactive

  plan_gating:
    - plus_family_required
    - feature_not_available_in_free

  state_conflict:
    - archived_case_not_mutable
    - completed_case_restricted
    - already_archived
    - already_active
    - already_deleted
    - restore_not_allowed

  linkage_and_masking:
    - hidden_by_masking_policy
    - confidentiality_violation
    - handoff_target_not_allowed
    - export_profile_not_allowed

  not_found:
    - legal_case_not_found
    - child_entity_not_found
    - membership_not_found
    - notification_preference_not_found

failure_policy:
  - validation error は field を可能な限り返す
  - authorization error は detail を過剰に出しすぎない
  - not_found は entity 名を明示してよい
  - masking / confidentiality 違反は UI に理由表示できる detail を返してよい
  - archived case 変更系は archived_case_not_mutable で統一してよい

message_guidelines:
  validation_error:
    - 入力内容を確認してください
  plus_family_required:
    - この機能は有料プランで利用できます
  forbidden_owner_only:
    - この操作は管理者のみ実行できます
  archived_case_not_mutable:
    - アーカイブ済み案件は再開後に編集できます
