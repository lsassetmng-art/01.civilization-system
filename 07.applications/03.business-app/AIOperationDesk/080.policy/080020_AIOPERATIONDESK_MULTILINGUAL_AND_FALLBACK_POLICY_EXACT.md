# ============================================================
# AI OPERATION DESK MULTILINGUAL AND FALLBACK POLICY EXACT
# ============================================================

status: exact-fixed
app: AIOperationDesk
layer: policy
owner: Boss
prepared_by: Zero

purpose:
Define the multilingual policy, fallback behavior, and localization targets
for AI Operation Desk v1.

v1_supported_languages:
- ja
- en

future_candidate_languages:
- zh-CN
- zh-TW
- ko
- es
- fr
- de

fallback_policy:
- primary_fallback:
    from: any unsupported locale
    to: en
- local_preference_rule:
    if user locale is ja and ja exists, use ja
    else if exact locale exists, use exact locale
    else use en
- system_message_safety_rule:
    if localized safety wording is missing, fallback to en canonical wording
- operational_code_rule:
    stable codes remain untranslated
    examples:
      - app_code
      - task_code
      - reason_code
      - risk_code
      - lane_type
      - write_surface_type

localization_targets_v1:
- main console labels
- resident surface labels
- queue bucket labels
- review / approval labels
- risk labels
- notification titles
- notification body templates
- supported app help wording
- operation QA wording
- error guidance wording
- summary batch headings

not_localized_v1:
- database table names
- API path strings
- canonical reason codes
- canonical risk codes
- route codes
- SQL identifiers

translation_structure_policy:
- strings must be key-based
- UI text must not depend on free-form hardcoded wording
- review / approval / risk wording must use standard dictionary keys
- supported app labels may extend per app, but common keys stay centralized

voice_related_policy:
- voice transcript may remain source-language raw text
- rendered UI guidance follows resolved locale
- if transcript language cannot be resolved safely, system falls back to en display wording

notification_locale_policy:
- notification text follows recipient locale preference when available
- if locale preference is missing, use en
- if only ja is available and locale is ja, prefer ja

summary_locale_policy:
- batch summary labels follow recipient locale
- stable identifiers remain untranslated
- item summaries may be localized but must preserve canonical references

standard_locale_keys_v1:
- aiod.common.open
- aiod.common.close
- aiod.common.back
- aiod.common.submit
- aiod.common.cancel
- aiod.common.save
- aiod.common.retry
- aiod.common.review
- aiod.common.approval
- aiod.common.error
- aiod.common.summary
- aiod.common.queue
- aiod.common.notification
- aiod.common.supported_app
- aiod.common.resident_surface
- aiod.common.main_console
- aiod.common.voice_input

official_position:
- v1 is multilingual-ready with ja and en fixed
- fallback is exact-locale -> ja/en policy -> en
- canonical codes remain language-independent
