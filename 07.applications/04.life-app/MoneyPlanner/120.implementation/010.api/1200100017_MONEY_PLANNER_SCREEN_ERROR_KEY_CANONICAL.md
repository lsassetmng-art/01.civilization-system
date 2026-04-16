# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# MONEY PLANNER SCREEN ERROR KEY CANONICAL
# ============================================================

status: canonical-draft
system: MoneyPlanner
layer: 120.implementation
subdomain: api

purpose:
  - screen 表示用 error key の正本を固定する
  - API error code mapping の受け皿にする

error_keys:

  validation:
    - validation.required
    - validation.currency.invalid
    - validation.enum.invalid
    - validation.date.invalid
    - validation.date.invalid_range
    - validation.amount.required
    - validation.amount.invalid_format
    - validation.amount.nonnegative_only
    - validation.amount.positive_only
    - validation.amount.scale_exceeded
    - validation.share_scope.invalid_for_target
    - validation.receive_candidate.invalid_status_transition
    - validation.shared_member.invalid_role_transition

  auth:
    - auth.required
    - auth.invalid

  permission:
    - permission.viewer.read_only
    - permission.partner_editor.private_denied
    - permission.owner_only.manual_share
    - permission.owner_only.sharing_manage
    - permission.plan.access_denied

  data:
    - data.plan.not_found
    - data.income.not_found
    - data.expense.not_found
    - data.asset.not_found
    - data.liability.not_found
    - data.saving_goal.not_found
    - data.event_budget.not_found
    - data.scenario.not_found
    - data.shared_member.not_found
    - data.memo.not_found
    - data.receive_candidate.not_found

  conflict:
    - conflict.shared_member.exists
    - conflict.shared_member.already_invited
    - conflict.scenario.name_exists
    - conflict.plan.name_exists
    - conflict.receive_candidate.duplicate_unresolved

  plan_limit:
    - plan_limit.scenario_compare.unavailable
    - plan_limit.family_sharing.unavailable
    - plan_limit.manual_share.unavailable

  system:
    - system.unexpected_error
    - system.projection_temporarily_unavailable

display_policy:
  - form field に紐づくものは field_error として出す
  - 画面全体制約は banner / dialog で出す
  - 同時に複数発生する場合は field_error を優先して表示する
