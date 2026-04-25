# AIWorkerOS Integration Append: LoVerS Style Feature Reference Surface

status: active
phase: lovers style feature update

## DB objects

Tables:

- aiworker.style_feature_axis_catalog
- aiworker.style_feature_value_catalog
- aiworker.style_feature_profile
- aiworker.style_feature_assignment

Views:

- aiworker.vw_lovers_style_feature_profile_v1
- aiworker.vw_lovers_style_feature_assignment_v1
- aiworker.vw_app_lovers_style_selection_card_v1

## App usage

CasualChatWorker should read LoVerS style cards from:

- aiworker.vw_app_lovers_style_selection_card_v1

The app should display:

- style_no_text
- app_display_name_ja
- app_display_summary_ja
- app_display_tags_ja
- recommended_usage_jsonb
- requires_strong_safety_notice_flag

## Boundary

This reference surface is read-only for CasualChatWorker.

CasualChatWorker must not mutate style feature truth.
