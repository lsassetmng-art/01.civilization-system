# ============================================================
# AI OPERATION DESK COMMON ERROR DICTIONARY SEED EXACT
# ============================================================

status: exact-fixed
app: AIOperationDesk
layer: integration
owner: Boss
prepared_by: Zero

purpose:
Define the initial common error dictionary seed used for error QA.

error_seed_entries_v1:

- error_code: COMMON_PERMISSION_CONTEXT_MISSING
  applies_to: all_supported_apps
  title_ja: 権限文脈不足
  title_en: Permission Context Missing
  likely_causes:
    - permission_context not attached
    - acting user does not have required permission
  check_items:
    - verify user permission context
    - verify supported app scope
  default_action:
    - show permission guidance
    - recommend escalation if needed

- error_code: COMMON_TARGET_BINDING_MISSING
  applies_to: all_supported_apps
  title_ja: 対象バインディング不足
  title_en: Target Binding Missing
  likely_causes:
    - target record not selected
    - company or module binding missing
  check_items:
    - verify company binding
    - verify record binding
    - verify module context
  default_action:
    - request missing target selection

- error_code: COMMON_UNSUPPORTED_APP_SCOPE
  applies_to: all_supported_apps
  title_ja: 未対応アプリ範囲
  title_en: Unsupported App Scope
  likely_causes:
    - app not onboarded
    - qa scope or execution scope not enabled
  check_items:
    - verify supported app registry
    - verify supported QA scope
    - verify supported write surfaces
  default_action:
    - show unsupported notice
    - stop app-specific QA or execution path

- error_code: ERP_REQUIRED_FIELD_MISSING
  applies_to: ERP
  title_ja: ERP必須項目不足
  title_en: ERP Required Field Missing
  likely_causes:
    - required voucher field missing
    - required company or record value missing
  check_items:
    - verify current field
    - verify current voucher type
    - verify entered values
  default_action:
    - explain missing field
    - recommend completion before retry

- error_code: ERP_CONFIGURATION_REVIEW_REQUIRED
  applies_to: ERP
  title_ja: ERP設定変更はレビュー必須
  title_en: ERP Configuration Review Required
  likely_causes:
    - request touches ERP configuration lane
  check_items:
    - verify lane type
    - verify risk class
  default_action:
    - route to review request creation

- error_code: BUILDER_ASSET_CONTEXT_MISSING
  applies_to: BUILDER_FAMILY
  title_ja: Builder対象アセット不足
  title_en: Builder Asset Context Missing
  likely_causes:
    - no selected asset
    - no current screen asset binding
  check_items:
    - verify selected builder asset
    - verify current screen context
  default_action:
    - request asset selection

- error_code: BUILDER_SCOPE_ACTION_NOT_SUPPORTED
  applies_to: BUILDER_FAMILY
  title_ja: Builder操作未対応
  title_en: Builder Action Not Supported
  likely_causes:
    - requested builder action not onboarded
  check_items:
    - verify supported task types
  default_action:
    - show supported scope guidance
    - stop governed execution path

rules:
- error dictionary entries are reusable seeds, not the final exhaustive list
- applies_to BUILDER_FAMILY means family-level pattern reused across Builder domains
- error QA must stay within supported-app-only boundary
