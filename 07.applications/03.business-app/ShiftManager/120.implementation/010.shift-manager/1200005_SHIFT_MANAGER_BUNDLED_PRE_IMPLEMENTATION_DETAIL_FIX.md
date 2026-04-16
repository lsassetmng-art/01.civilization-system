# ============================================================
# SHIFT MANAGER BUNDLED PRE-IMPLEMENTATION DETAIL FIX
# ============================================================

status: implementation-facing-detail-pack
type: bundled-pre-implementation-detail-fix
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document fixes the bundled late-stage pre-implementation details for ShiftManager.

It consolidates:
- API request / response exact payload direction
- enum / required / optional / null rules
- RLS SQL draft separation direction
- auto-generation condition JSON structure
- notification template wording
- screen input item definition

# ============================================================
# 2. COMMON API RESPONSE RULE
# ============================================================

common_success_response:
{
  "ok": true,
  "data": {},
  "error": null,
  "meta": {
    "request_id": "req_xxx"
  }
}

common_error_response:
{
  "ok": false,
  "data": null,
  "error": {
    "code": "SHIFT_VALIDATION_ERROR",
    "message": "validation error",
    "details": {
      "field_errors": []
    }
  },
  "meta": {
    "request_id": "req_xxx"
  }
}

common_rules:
- required fields must be present
- optional fields may be omitted
- nullable fields may be null
- list APIs return items array
- time format = HH:MM:SS
- date format = YYYY-MM-DD
- datetime format = ISO-8601 with offset
- enums are fixed strings
- booleans are always true/false

# ============================================================
# 3. EXACT PAYLOAD FIXATION
# ============================================================

bootstrap_response_shape:
- app_access_allowed
- person_id
- company_id
- roles[]
- default_home_type
- profile
- capabilities

default_home_type_enum:
- admin_dashboard
- staff_today_shift

schedule_create_request:
- schedule_name
- target_scope_type
- target_scope_id
- target_period_type
- period_start_date
- period_end_date
- note

target_scope_type_enum:
- team
- department
- office
- mixed

target_period_type_enum:
- day
- week
- month

schedule_create_response:
- schedule_id
- status
- draft_version_no
- generation_mode

assignment_create_request:
- person_id
- shift_date
- start_time
- end_time
- role_code
- office_id
- department_id
- team_id
- memo

assignment_create_response:
- assignment_id
- source_type

assignment_source_type_enum:
- manual
- auto_generated
- auto_adjusted

validate_for_publication_response:
- ready
- warnings[]
- summary

validation_warning_level_enum:
- info
- warning
- high
- critical

publish_request:
- publication_note
- notification_requested
- erp_export_required

publish_response:
- publication_id
- publication_version_no
- publication_status
- published_at

republish_request:
- publication_note
- notification_requested
- erp_export_required

republish_response:
- publication_id
- publication_version_no
- publication_status
- superseded_publication_id

share_rule_create_request:
- rule_name
- scope_type
- visibility_level
- applies_to_schedule_id
- targets[]

scope_type_enum:
- person
- team
- department
- management_scope

visibility_level_enum:
- self_only
- assigned_members
- team_visible
- department_visible
- manager_visible

target_type_enum:
- person
- team
- department
- role

share_preview_response:
- viewer_count
- scope_breakdown[]
- sample_viewers[]

my_shifts_today_response:
- items[]
  - publication_id
  - publication_assignment_id
  - shift_date
  - start_time
  - end_time
  - office_name
  - department_name
  - role_code
  - memo

notification_list_response:
- items[]
  - notification_id
  - notification_type
  - title
  - body
  - delivery_status
  - urgent_flag
  - related_shift_date
  - deep_link_path
  - queued_at
  - delivered_at
  - read_at
- page
- page_size
- total_count

notification_type_enum:
- publish
- republish
- same_day
- urgent_change

notification_delivery_status_enum:
- queued
- sent
- failed
- read

erp_export_request:
- export_mode

export_mode_enum:
- manual
- automatic

erp_export_response:
- publication_id
- export_status

erp_export_status_enum:
- not_required
- pending
- exporting
- success
- failed

generation_rule_create_request:
- rule_name
- target_scope_type
- target_scope_id
- period_type
- priority_policy
- condition_json

generation_rule_create_response:
- generation_rule_id
- active_flag

auto_generate_request:
- schedule_name
- target_scope_type
- target_scope_id
- target_period_type
- period_start_date
- period_end_date
- generation_rule_id
- overwrite_policy

overwrite_policy_enum:
- create_new_schedule
- replace_existing_draft
- merge_into_existing_draft

auto_generate_response:
- schedule_id
- generation_result_id
- generation_mode
- generated_assignment_count
- unassigned_count
- warning_count

generation_result_response:
- generation_result_id
- schedule_id
- generation_rule_id
- generated_at
- generated_assignment_count
- unassigned_count
- warning_count
- result_summary

generation_warning_response:
- items[]
  - generation_warning_id
  - warning_type
  - warning_level
  - target_date
  - target_slot
  - related_person_id
  - message
  - details

generation_warning_type_enum:
- unassigned_slot
- requested_day_off_conflict
- consecutive_work_risk
- imbalance_warning
- skill_shortage
- priority_fallback

generation_warning_level_enum:
- info
- warning
- high
- critical

# ============================================================
# 4. RLS SQL DRAFT SET SPLIT
# ============================================================

recommended_rls_sql_files:
- 001_shift_manager_rls_helpers.sql
- 002_shift_manager_rls_enable.sql
- 003_shift_manager_rls_draft.sql
- 004_shift_manager_rls_publication.sql
- 005_shift_manager_rls_share.sql
- 006_shift_manager_rls_notification.sql
- 007_shift_manager_rls_erp.sql
- 008_shift_manager_rls_generation.sql

generation_rls_direction:
shift_generation_rule:
- shift_admin
- department_manager
- conditional team_leader
- staff denied
- integration_operator denied

shift_generation_result:
- generation executor
- same managed scope managers
- staff denied

shift_generation_warning:
- follows generation_result visibility
- staff denied

# ============================================================
# 5. AUTO GENERATION CONDITION JSON SPEC
# ============================================================

base_shape:
{
  "business_days": [],
  "slot_requirements": [],
  "person_constraints": [],
  "priority_policy": {},
  "hard_rules": {},
  "soft_rules": {}
}

business_days_example:
["mon", "tue", "wed", "thu", "fri"]

slot_requirements_shape:
[
  {
    "slot_code": "morning",
    "start_time": "09:00:00",
    "end_time": "13:00:00",
    "required_headcount": 2,
    "required_roles": [
      {
        "role_code": "cashier",
        "count": 1
      }
    ]
  }
]

person_constraints_shape:
[
  {
    "person_id": "uuid",
    "available_weekdays": ["mon", "tue", "wed"],
    "available_time_ranges": [
      {
        "start_time": "09:00:00",
        "end_time": "18:00:00"
      }
    ],
    "requested_days_off": ["2026-04-08"],
    "blocked_dates": [],
    "max_daily_hours": 8,
    "max_weekly_assignments": 4,
    "max_consecutive_days": 3
  }
]

priority_policy_shape:
{
  "balanced_assignment": true,
  "prefer_same_role_continuity": true,
  "prefer_veteran": false,
  "prefer_low_cost": false
}

hard_rules_shape:
{
  "must_respect_requested_days_off": true,
  "must_respect_max_daily_hours": true,
  "must_respect_max_consecutive_days": true
}

soft_rules_shape:
{
  "prefer_balanced_distribution": true,
  "allow_priority_fallback": true,
  "warn_on_skill_shortage": true
}

# ============================================================
# 6. NOTIFICATION TEMPLATE FIXATION
# ============================================================

publish_template:
title:
- シフトが公開されました
body:
- {period_label} のシフトが公開されました。内容を確認してください。

republish_template:
title:
- シフトが更新されました
body:
- {period_label} のシフトに変更があります。最新内容を確認してください。

same_day_template:
title:
- 本日の勤務予定
body:
- 本日の勤務は {start_time}〜{end_time}、{office_name} です。

urgent_change_template:
title:
- 至急確認：勤務予定が変更されました
body:
- 勤務予定に重要な変更があります。最新内容を確認してください。

# ============================================================
# 7. SCREEN INPUT ITEM DEFINITION
# ============================================================

shift_create_inputs:
- schedule_name
- target_scope_type
- target_scope_id
- target_period_type
- period_start_date
- period_end_date
- note

shift_edit_inputs:
- person_id
- shift_date
- start_time
- end_time
- role_code
- office_id
- department_id
- team_id
- memo

publish_confirmation_inputs:
- publication_note
- notification_requested
- erp_export_required

share_scope_setting_inputs:
- rule_name
- scope_type
- visibility_level
- target_type
- target_id

auto_generation_condition_setting_inputs:
- rule_name
- target_scope_type
- target_scope_id
- period_type
- business_days
- slot_requirements
- person_constraints
- priority_policy
- hard_rules
- soft_rules

auto_generation_execute_confirmation_inputs:
- schedule_name
- period_start_date
- period_end_date
- generation_rule_id
- overwrite_policy

# ============================================================
# 8. CRITICAL FIXATION POINTS
# ============================================================

critical_points:
- API payloads should now follow these exact shapes
- generation remains draft-side responsibility
- notification wording starts in Japanese fixed templates
- RLS split must include generation-side files
- condition_json stays jsonb-centered initially

# ============================================================
# 9. CONCLUSION
# ============================================================

This bundled detail pack fixes the late-stage pre-implementation details
needed to move next into:
- saved exact payload spec documents
- RLS SQL draft files
- generation JSON-specific design refinement

