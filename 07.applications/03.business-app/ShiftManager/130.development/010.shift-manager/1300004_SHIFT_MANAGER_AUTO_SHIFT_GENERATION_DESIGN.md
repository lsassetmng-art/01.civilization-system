# ============================================================
# SHIFT MANAGER AUTO SHIFT GENERATION DESIGN
# ============================================================

status: design-extension
type: auto-shift-generation-design
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. POSITIONING
# ============================================================

Auto generation in ShiftManager is not automatic publication.
It is condition-based automatic draft generation.

responsibility:
- define generation conditions
- generate draft schedules based on conditions
- preserve warnings and unassigned areas
- allow human review and manual correction before publication

publication remains manual after human confirmation.

# ============================================================
# 2. BASIC PRINCIPLES
# ============================================================

principles:
1. auto generation creates drafts only
2. auto-generated drafts are never auto-published
3. shortages and warnings must remain visible
4. partially possible draft generation is allowed
5. auto-generated and manually edited result should be distinguishable
6. publish / republish responsibility remains in publication domain

# ============================================================
# 3. PURPOSE
# ============================================================

purposes:
- reduce manager initial creation burden
- lighten recurring weekly/monthly schedule work
- generate a practical first draft quickly
- let humans focus on shortage/fine tuning areas

This is not fully automatic operation.
It is human-supervised automatic draft assistance.

# ============================================================
# 4. INPUT CONDITIONS
# ============================================================

target_conditions:
- target period
- target department
- target team
- target office
- generation unit: day / week / month

slot_conditions:
- business days
- business hours
- shift slots
- required headcount by time zone
- required headcount by role

person_conditions:
- person_id
- affiliation
- role
- skill
- workable weekdays
- workable time ranges
- requested days off
- blocked dates
- max work time
- max work count
- consecutive work limitation

priority_conditions:
- specific role priority
- balanced assignment priority
- veteran priority
- continuity priority
- cost control priority

# ============================================================
# 5. RESULT TYPES
# ============================================================

result_types:
- auto_assigned
- unassigned
- assigned_with_warning

warning_examples:
- requested day off conflict candidate
- large imbalance
- too many consecutive assignments
- lower-priority assignment used

# ============================================================
# 6. FLOW
# ============================================================

basic_flow:
condition_setting
-> auto_generate_execute
-> draft_generated
-> generation_result_review
-> shortage / warning review
-> manual adjustment
-> validate-for-publication
-> publish

important_rule:
existing publish flow must remain intact.
auto generation is only a front-side draft preparation extension.

# ============================================================
# 7. SCREEN ADDITIONS
# ============================================================

additional_screens:
- auto_generation_condition_setting
- auto_generation_execute_confirmation
- auto_generation_result_review
- generation_shortage_warning_list

navigation_addition:
dashboard
-> shift_list
-> auto_generation_condition_setting
-> auto_generation_execute_confirmation
-> auto_generation_result_review
-> shift_edit
-> draft_confirmation
-> publish_confirmation

# ============================================================
# 8. PACKAGE / MODULE IMPACT
# ============================================================

recommended_position:
auto generation belongs under draft-side responsibility,
not publication/share/erp.

recommended_logical_split:
- draft
  - auto-generation
  - validation
  - manual-edit

or
- draft
- draft-auto-generation

# ============================================================
# 9. DATABASE EXTENSIONS
# ============================================================

shift_schedule_extension_candidates:
- generation_mode
- generation_rule_id
- auto_generation_summary_json
- auto_generated_at
- auto_generated_by_person_id

generation_mode_examples:
- manual
- auto_generated
- auto_generated_then_edited

new_table_candidates:
- shift_generation_rule
- shift_generation_result
- shift_generation_warning

shift_generation_rule_role:
store generation conditions

shift_generation_result_role:
store execution summary result

shift_generation_warning_role:
store shortage/warning records

# ============================================================
# 10. API ADDITIONS
# ============================================================

api_candidates:
- POST /api/shift-manager/v1/generation-rules
- GET /api/shift-manager/v1/generation-rules
- POST /api/shift-manager/v1/schedules/auto-generate
- GET /api/shift-manager/v1/schedules/{schedule_id}/generation-result
- GET /api/shift-manager/v1/schedules/{schedule_id}/generation-warnings

# ============================================================
# 11. DTO ADDITIONS
# ============================================================

dto_candidates:
generation_rule:
- GenerationRuleDto
- CreateGenerationRuleRequestDto
- UpdateGenerationRuleRequestDto
- GenerationRuleListResponseDto

generation_result:
- GenerateScheduleRequestDto
- GenerateScheduleResponseDto
- GenerationResultDto
- GenerationWarningDto
- GenerationWarningListResponseDto

# ============================================================
# 12. NOTIFICATION RELATION
# ============================================================

notification_policy:
- do not notify staff when only auto generation finishes
- auto generation is internal preparation
- normal notifications begin after publication

optional_admin_notice:
- generation complete notice to managers may be added later

# ============================================================
# 13. AUTHORITY
# ============================================================

allowed_roles:
- shift_admin
- department_manager
- conditional team_leader

not_allowed_roles:
- staff
- integration_operator

team_leader_rule:
- auto-generate may be conditionally allowed
- publish remains not allowed

# ============================================================
# 14. STATE REPRESENTATION
# ============================================================

recommended_representation:
keep schedule.status unchanged:
- draft
- published
- superseded
- closed

use additional attributes:
- generation_mode
- auto_generated_flag
- has_generation_warnings

# ============================================================
# 15. CRITICAL DECISIONS
# ============================================================

critical_points:
- auto generation creates drafts only
- publish remains human action
- shortages and warnings must remain visible
- auto-generated result is expected to be manually adjustable
- auto generation is an extension of draft responsibility

# ============================================================
# 16. CONCLUSION
# ============================================================

Condition-based automatic draft generation
fits ShiftManager naturally.

The safe design is:
automatic draft generation only,
followed by human review and manual publication.

