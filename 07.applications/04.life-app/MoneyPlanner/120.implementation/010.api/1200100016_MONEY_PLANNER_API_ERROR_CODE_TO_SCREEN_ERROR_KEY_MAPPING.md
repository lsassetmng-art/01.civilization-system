# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# MONEY PLANNER API ERROR CODE TO SCREEN ERROR KEY MAPPING
# ============================================================

status: canonical-draft
system: MoneyPlanner
layer: 120.implementation
subdomain: api

purpose:
  - API error code と screen error key の対応を固定する
  - UI が message 文字列に依存しないようにする
  - field error / form error / global error の出し分けを整理する

source_of_truth:
  api_error_doc:
    - 1200100005_MONEY_PLANNER_API_ERROR_CODE_CATALOG.md
  screen_validation_doc:
    - 0900100002_MONEY_PLANNER_SCREEN_INPUT_VALIDATION_CANONICAL.md

error_display_levels:
  field_error:
    - 特定 field に紐づく
  form_error:
    - フォーム全体に紐づく
  global_error:
    - 画面全体の通知帯に表示する

mapping:

  MP-400-001:
    meaning: required field missing
    target_error_keys:
      - validation.required
    display_level: field_error
    typical_targets:
      - income_form.title
      - income_form.amount
      - expense_form.title
      - saving_goal_form.goal_name
      - event_budget_form.event_name
      - sharing_invite_form.user_ref
      - memo_form.body

  MP-400-002:
    meaning: invalid currency_code
    target_error_keys:
      - validation.currency.invalid
    display_level: field_error
    typical_targets:
      - dashboard.base_currency
      - income_form.currency_code
      - expense_form.currency_code
      - asset_form.currency_code
      - liability_form.currency_code
      - saving_goal_form.currency_code
      - event_budget_form.currency_code

  MP-400-003:
    meaning: invalid enum value
    target_error_keys:
      - validation.enum.invalid
    display_level: field_error
    typical_targets:
      - income_form.frequency
      - expense_form.necessity_level
      - asset_form.asset_type
      - liability_form.liability_type
      - saving_goal_form.status
      - scenario_form.scenario_type
      - sharing_invite_form.role
      - sharing_invite_form.visibility_scope

  MP-400-004:
    meaning: invalid date range
    target_error_keys:
      - validation.date.invalid_range
    display_level: field_error
    typical_targets:
      - income_form.end_date
      - expense_form.end_date
      - saving_goal_form.target_date

  MP-400-005:
    meaning: amount must be nonnegative
    target_error_keys:
      - validation.amount.nonnegative_only
    display_level: field_error
    typical_targets:
      - income_form.amount
      - expense_form.amount
      - asset_form.amount
      - liability_form.balance_amount
      - liability_form.monthly_payment
      - saving_goal_form.current_saved_amount
      - saving_goal_form.monthly_target_amount

  MP-400-006:
    meaning: target_amount must be positive
    target_error_keys:
      - validation.amount.positive_only
    display_level: field_error
    typical_targets:
      - saving_goal_form.target_amount
      - event_budget_form.target_amount

  MP-401-001:
    meaning: authentication required
    target_error_keys:
      - auth.required
    display_level: global_error
    typical_targets:
      - all_authenticated_screens

  MP-401-002:
    meaning: token invalid
    target_error_keys:
      - auth.invalid
    display_level: global_error
    typical_targets:
      - all_authenticated_screens

  MP-403-001:
    meaning: viewer role cannot update resource
    target_error_keys:
      - permission.viewer.read_only
    display_level: form_error
    typical_targets:
      - any_edit_form

  MP-403-002:
    meaning: partner_editor cannot update private resource
    target_error_keys:
      - permission.partner_editor.private_denied
    display_level: form_error
    typical_targets:
      - receive_candidate_review
      - income_form
      - expense_form
      - asset_form
      - liability_form
      - saving_goal_form
      - event_budget_form
      - memo_form

  MP-403-003:
    meaning: only owner can execute external share
    target_error_keys:
      - permission.owner_only.manual_share
    display_level: form_error
    typical_targets:
      - linkage_settings
      - receive_candidate_review

  MP-403-004:
    meaning: plan access denied
    target_error_keys:
      - permission.plan.access_denied
    display_level: global_error
    typical_targets:
      - dashboard
      - family_sharing
      - linkage_settings
      - receive_candidate_review

  MP-403-005:
    meaning: only owner can manage shared members
    target_error_keys:
      - permission.owner_only.sharing_manage
    display_level: form_error
    typical_targets:
      - family_sharing

  MP-404-001:
    meaning: plan not found
    target_error_keys:
      - data.plan.not_found
    display_level: global_error
    typical_targets:
      - dashboard
      - yearly_projection
      - monthly_projection
      - family_sharing
      - linkage_settings

  MP-404-002:
    meaning: income item not found
    target_error_keys:
      - data.income.not_found
    display_level: form_error
    typical_targets:
      - income_list
      - income_form

  MP-404-003:
    meaning: expense item not found
    target_error_keys:
      - data.expense.not_found
    display_level: form_error
    typical_targets:
      - expense_list
      - expense_form

  MP-404-004:
    meaning: asset item not found
    target_error_keys:
      - data.asset.not_found
    display_level: form_error
    typical_targets:
      - asset_list
      - asset_form

  MP-404-005:
    meaning: liability item not found
    target_error_keys:
      - data.liability.not_found
    display_level: form_error
    typical_targets:
      - liability_list
      - liability_form

  MP-404-006:
    meaning: saving goal not found
    target_error_keys:
      - data.saving_goal.not_found
    display_level: form_error
    typical_targets:
      - saving_goal_list
      - saving_goal_form

  MP-404-007:
    meaning: event budget not found
    target_error_keys:
      - data.event_budget.not_found
    display_level: form_error
    typical_targets:
      - event_budget_list
      - event_budget_form

  MP-404-008:
    meaning: scenario not found
    target_error_keys:
      - data.scenario.not_found
    display_level: form_error
    typical_targets:
      - scenario_compare

  MP-404-009:
    meaning: shared member not found
    target_error_keys:
      - data.shared_member.not_found
    display_level: form_error
    typical_targets:
      - family_sharing

  MP-404-010:
    meaning: memo not found
    target_error_keys:
      - data.memo.not_found
    display_level: form_error
    typical_targets:
      - memo_list
      - memo_form

  MP-404-011:
    meaning: receive candidate not found
    target_error_keys:
      - data.receive_candidate.not_found
    display_level: form_error
    typical_targets:
      - receive_candidate_review

  MP-404-012:
    meaning: shared member not found
    target_error_keys:
      - data.shared_member.not_found
    display_level: form_error
    typical_targets:
      - family_sharing

  MP-409-001:
    meaning: shared member already exists
    target_error_keys:
      - conflict.shared_member.exists
    display_level: form_error
    typical_targets:
      - family_sharing.invite

  MP-409-002:
    meaning: scenario name already exists
    target_error_keys:
      - conflict.scenario.name_exists
    display_level: field_error
    typical_targets:
      - scenario_form.name

  MP-409-003:
    meaning: duplicate active plan name in same owner scope
    target_error_keys:
      - conflict.plan.name_exists
    display_level: field_error
    typical_targets:
      - plan_settings_form.plan_name

  MP-409-004:
    meaning: duplicate reference conflict unresolved
    target_error_keys:
      - conflict.receive_candidate.duplicate_unresolved
    display_level: form_error
    typical_targets:
      - receive_candidate_review

  MP-409-005:
    meaning: shared member already invited
    target_error_keys:
      - conflict.shared_member.already_invited
    display_level: form_error
    typical_targets:
      - family_sharing.invite

  MP-422-001:
    meaning: free plan cannot use compare api
    target_error_keys:
      - plan_limit.scenario_compare.unavailable
    display_level: global_error
    typical_targets:
      - scenario_compare

  MP-422-002:
    meaning: free plan cannot use sharing api
    target_error_keys:
      - plan_limit.family_sharing.unavailable
    display_level: global_error
    typical_targets:
      - family_sharing

  MP-422-003:
    meaning: free plan cannot use linkage manual share
    target_error_keys:
      - plan_limit.manual_share.unavailable
    display_level: global_error
    typical_targets:
      - linkage_settings

  MP-422-004:
    meaning: share_scope invalid for target system
    target_error_keys:
      - validation.share_scope.invalid_for_target
    display_level: form_error
    typical_targets:
      - linkage_settings

  MP-422-005:
    meaning: invalid candidate status transition
    target_error_keys:
      - validation.receive_candidate.invalid_status_transition
    display_level: form_error
    typical_targets:
      - receive_candidate_review

  MP-422-006:
    meaning: invalid role transition
    target_error_keys:
      - validation.shared_member.invalid_role_transition
    display_level: form_error
    typical_targets:
      - family_sharing

  MP-500-001:
    meaning: unexpected server error
    target_error_keys:
      - system.unexpected_error
    display_level: global_error
    typical_targets:
      - all_screens

  MP-503-001:
    meaning: projection service temporarily unavailable
    target_error_keys:
      - system.projection_temporarily_unavailable
    display_level: global_error
    typical_targets:
      - dashboard
      - monthly_projection
      - yearly_projection

mapping_rules:
  - field_error は可能なら具体 field へ紐づける
  - field を特定できない validation は form_error に落とす
  - permission / auth / server は原則 global_error
  - UI 文言は error key から翻訳テーブルで解決する
