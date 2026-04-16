# ============================================================
# SHIFT MANAGER SCREEN INPUT ITEM DEFINITION TABLE
# ============================================================

status: implementation-facing-fixed-candidate
type: screen-input-item-definition-table
system: business-os
application: ShiftManager
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document fixes the primary input items
for major ShiftManager screens before implementation.

This is intended to stabilize:
- UI design
- payload design
- validation direction
- screen responsibility boundaries

# ============================================================
# 2. BASIC RULES
# ============================================================

rules:
- only user-entered or user-selected items are listed as screen inputs
- display-only fields are not treated as screen inputs here
- required/optional meaning follows current design direction
- final UI detail may add helper controls without changing business meaning

# ============================================================
# 3. SHIFT_CREATE
# ============================================================

screen:
- shift_create

inputs:
- schedule_name
- target_scope_type
- target_scope_id
- target_period_type
- period_start_date
- period_end_date
- note

required_inputs:
- schedule_name
- target_scope_type
- target_period_type
- period_start_date
- period_end_date

optional_inputs:
- target_scope_id
- note

# ============================================================
# 4. SHIFT_EDIT
# ============================================================

screen:
- shift_edit

inputs:
- person_id
- shift_date
- start_time
- end_time
- role_code
- office_id
- department_id
- team_id
- memo

required_inputs:
- person_id
- shift_date
- start_time
- end_time

optional_inputs:
- role_code
- office_id
- department_id
- team_id
- memo

# ============================================================
# 5. PUBLISH_CONFIRMATION
# ============================================================

screen:
- publish_confirmation

inputs:
- publication_note
- notification_requested
- erp_export_required

required_inputs:
- none

optional_inputs:
- publication_note
- notification_requested
- erp_export_required

# ============================================================
# 6. REPUBLISH_CONFIRMATION
# ============================================================

screen:
- republish_confirmation

inputs:
- publication_note
- notification_requested
- erp_export_required

required_inputs:
- none

optional_inputs:
- publication_note
- notification_requested
- erp_export_required

# ============================================================
# 7. SHARE_SCOPE_SETTING
# ============================================================

screen:
- share_scope_setting

inputs:
- rule_name
- scope_type
- visibility_level
- target_type
- target_id

required_inputs:
- rule_name
- scope_type
- visibility_level
- target_type
- target_id

optional_inputs:
- none

# ============================================================
# 8. AUTO_GENERATION_CONDITION_SETTING
# ============================================================

screen:
- auto_generation_condition_setting

inputs:
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

required_inputs:
- rule_name
- target_scope_type
- period_type
- slot_requirements

optional_inputs:
- target_scope_id
- business_days
- person_constraints
- priority_policy
- hard_rules
- soft_rules

# ============================================================
# 9. AUTO_GENERATION_EXECUTE_CONFIRMATION
# ============================================================

screen:
- auto_generation_execute_confirmation

inputs:
- schedule_name
- period_start_date
- period_end_date
- generation_rule_id
- overwrite_policy

required_inputs:
- schedule_name
- period_start_date
- period_end_date
- generation_rule_id
- overwrite_policy

optional_inputs:
- none

# ============================================================
# 10. PDF_EXPORT_SETTING
# ============================================================

screen:
- pdf_export_setting

inputs:
- export_type
- layout_type
- include_memo

required_inputs:
- export_type
- layout_type

optional_inputs:
- include_memo

# ============================================================
# 11. ERP_EXPORT_CONFIRMATION
# ============================================================

screen:
- erp_export_confirmation

inputs:
- export_mode

required_inputs:
- export_mode

optional_inputs:
- none

# ============================================================
# 12. INPUT ENUM REFERENCE
# ============================================================

target_scope_type:
- team
- department
- office
- mixed

target_period_type:
- day
- week
- month

scope_type:
- person
- team
- department
- management_scope

visibility_level:
- self_only
- assigned_members
- team_visible
- department_visible
- manager_visible

target_type:
- person
- team
- department
- role

overwrite_policy:
- create_new_schedule
- replace_existing_draft
- merge_into_existing_draft

export_type:
- draft_pdf
- publication_pdf
- personal_pdf
- department_pdf
- board_pdf

layout_type:
- weekly_a4
- monthly_a4
- personal_compact
- board_a4
- board_a3

export_mode:
- manual
- automatic

# ============================================================
# 13. VALIDATION DIRECTION SUMMARY
# ============================================================

validation_direction:
- schedule_name must not be empty
- period_end_date must be >= period_start_date
- start_time must be < end_time
- share target fields must not be partially missing
- slot_requirements must contain at least 1 slot
- generation_rule_id must exist for auto generation execution
- export_type/layout_type must be compatible
- publication/republish confirm fields remain optional toggles

# ============================================================
# 14. CONCLUSION
# ============================================================

This document fixes the main user-input definition set
for the core ShiftManager screens,
including:
- shift creation/edit
- publish/republish
- sharing
- auto generation
- PDF export
- ERP export

