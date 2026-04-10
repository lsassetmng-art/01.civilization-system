# ============================================================
# NAMECARD TRANSLATION DISPLAY MODEL
# ============================================================

status: canonical
layer: model
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Defines translation-aware display model while preserving original data.

display_layers:
- original_value
- normalized_value_optional
- translated_display_value_optional
- search_assist_value_optional

rules:
- original value remains canonical for user-entered data
- translated display is assistive and non-canonical
- normalized value may support grouping/search
- translated display must remain reviewable and replaceable

target_fields_optional:
- company_name
- department_name
- title_name
- memo_summary
- responsibility_scope_summary
- meeting_prep_summary
- publication_preview_summary
