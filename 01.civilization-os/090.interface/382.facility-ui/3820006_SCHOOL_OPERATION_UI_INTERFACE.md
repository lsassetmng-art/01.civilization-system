# ============================================================
# SCHOOL OPERATION UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: school-operation-ui-interface
component: school-operation-ui-interface

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the school operation UI interface contract
for Civilization education-oriented facilities.

This document must align with:

- CIVILIZATION_FACILITY_UI_INTERFACE
- SCHOOL_OPERATION_UI_ARCHITECTURE

This document defines
screen composition,
tab contract,
field contract,
action contract,
and state contract
for school operation UI.


# ============================================================
# 2. SCREEN MAP
# ============================================================

Canonical screens:

- school_overview_screen
- school_manage_screen
- school_enrollment_screen
- school_program_screen
- school_staffing_screen
- school_capacity_screen
- school_student_life_screen
- school_safety_and_welfare_screen
- school_issue_screen


# ============================================================
# 3. SCHOOL OVERVIEW SCREEN
# ============================================================

screen_id: school_overview_screen
route_key: school/overview
route_params:
- facility_id
- facility_type
- canonical_ui_target
- selected_tab optional

visible_sections:
- school_summary_card
- school_status_strip
- school_capacity_warning_panel
- school_staffing_warning_panel
- school_kpi_strip
- school_issue_panel
- school_recent_history_panel

primary_actions:
- open_school_manage
- open_school_enrollment
- open_school_student_life
- open_school_issue

states:
- loading
- ready
- empty
- warning
- blocked
- partial_data
- error


# ============================================================
# 4. SCHOOL MANAGE SCREEN TABS
# ============================================================

Canonical tabs:

- summary_tab
- enrollment_tab
- program_tab
- staffing_tab
- capacity_tab
- student_life_tab
- safety_and_welfare_tab
- automation_tab
- kpi_tab
- issue_tab
- history_tab
- permission_tab
- linked_tab


# ============================================================
# 5. SCHOOL SUMMARY CARD
# ============================================================

section_id: school_summary_card
section_type: summary_card

fields:
- facility_name
- school_type
- institution_context
- district_summary
- enrollment_state
- staffing_state
- current_alert_level

actions:
- change_mode_to_operate
- open_issue_screen


# ============================================================
# 6. ENROLLMENT TAB
# ============================================================

section_id: school_enrollment_section
section_type: table

fields:
- intake_group
- current_student_count
- capacity_state
- progression_stage_group where applicable
- support_need_flag
- overload_flag

actions:
- open_enrollment_detail
- adjust_intake where supported
- escalate_enrollment_issue


# ============================================================
# 7. PROGRAM TAB
# ============================================================

section_id: school_program_section
section_type: grouped_list

fields:
- program_group
- course_count
- specialization_posture
- unsupported_area_flag
- overload_flag
- academic_focus_state

actions:
- open_program_detail
- reprioritize_program
- escalate_program_issue


# ============================================================
# 8. STAFFING TAB
# ============================================================

section_id: school_staffing_section
section_type: table

fields:
- role_group
- assigned_staff_count
- coverage_state
- overload_flag
- support_burden_flag
- reassignment_need_flag

actions:
- open_staffing_detail
- reassign_staff
- escalate_staffing_issue


# ============================================================
# 9. CAPACITY TAB
# ============================================================

section_id: school_capacity_section
section_type: table

fields:
- campus_or_facility_group
- capacity_value
- utilization_state
- overcrowding_flag
- underuse_flag
- special_facility_pressure_flag

actions:
- open_capacity_detail
- reallocate_capacity
- escalate_capacity_issue


# ============================================================
# 10. STUDENT LIFE TAB
# ============================================================

section_id: school_student_life_section
section_type: relationship_panel

fields:
- dormitory_linkage_state where applicable
- student_support_burden_flag
- life_continuity_state
- linked_residence_support_flag
- non_academic_issue_flag
- escalation_need_flag

actions:
- open_student_life_detail
- open_linked_support
- escalate_student_life_issue


# ============================================================
# 11. SAFETY AND WELFARE TAB
# ============================================================

section_id: school_safety_and_welfare_section
section_type: issue_panel

fields:
- safety_state
- discipline_state
- welfare_support_state
- incident_flag
- support_overload_flag
- escalation_need_flag

actions:
- open_safety_detail
- escalate_safety_issue
- trigger_support_follow_up


# ============================================================
# 12. AUTOMATION TAB
# ============================================================

section_id: school_automation_section
section_type: detail_panel

fields:
- automation_enabled
- active_policy_profile
- automation_visibility_state
- escalation_threshold_summary
- recent_automated_change_summary

actions:
- pause_automation
- resume_automation
- open_automation_detail


# ============================================================
# 13. KPI TAB
# ============================================================

section_id: school_kpi_section
section_type: metric_strip

kpi_items:
- enrollment_posture
- capacity_sufficiency_posture
- staffing_sufficiency_posture
- program_balance_posture
- student_life_support_posture
- intervention_frequency_posture


# ============================================================
# 14. ISSUE TAB
# ============================================================

section_id: school_issue_section
section_type: issue_panel

issue_types:
- overcapacity_or_undercapacity
- teacher_shortage
- student_life_support_overload
- discipline_issue
- safety_concern
- dormitory_linked_issue
- academic_operation_instability

actions:
- open_issue_detail
- intervene_now
- escalate_issue


# ============================================================
# 15. ROLE EXPOSURE
# ============================================================

manager:
- all tabs visible
- all standard actions visible

teacher_or_staff:
- summary_tab
- program_tab limited
- staffing_tab limited
- issue_tab
- history_tab limited

student_support_operator:
- student_life_tab
- safety_and_welfare_tab
- issue_tab
- linked_tab limited

authority:
- summary_tab
- safety_and_welfare_tab
- issue_tab
- history_tab
- permission_tab limited


# ============================================================
# 16. FINAL RULE
# ============================================================

School UI interface must remain
education-oriented,
capacity-visible,
student-life-visible,
issue-visible,
and explicitly separable
from pure residence or training UI.
