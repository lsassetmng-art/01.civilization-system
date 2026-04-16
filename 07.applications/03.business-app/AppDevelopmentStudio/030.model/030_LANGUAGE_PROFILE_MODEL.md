# ============================================================
# LANGUAGE PROFILE MODEL
# ============================================================

status: canonical-draft
layer: model
application: App Development Studio

purpose:
Defines configurable language settings for UI and artifact output.

definition:
language_profile represents a language configuration set
used by the application for presentation and generation output.

minimum_fields:
- language_profile_id
- profile_name
- ui_language
- input_assist_language
- design_output_language
- test_output_language
- bug_output_language
- review_output_language
- release_output_language
- fallback_language
- status
- created_at
- updated_at

notes:
UI language and artifact output language are intentionally separated.
