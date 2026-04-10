# ============================================================
# NAMECARD LOCALE CONTRACT
# ============================================================

status: canonical
layer: integration
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Defines locale-related boundary direction for UI and output behavior.

request_direction:
- ui_locale
- output_locale_optional
- fallback_locale
- translation_display_enabled_optional

response_direction:
- effective_ui_locale
- effective_output_locale
- fallback_locale
- translation_display_state
- localized_labels_optional
- localized_output_optional

rules:
- locale contract must not silently rewrite canonical user data
- localized output may be generated from canonical data plus display rules
- fallback behavior must be explicit

