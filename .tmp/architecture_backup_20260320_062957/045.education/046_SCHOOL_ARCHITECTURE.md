# ============================================================
# SCHOOL ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
School is an educational institution with configurable admission rules.

core_properties:
- school_id
- school_name
- school_type
- entrance_exam_required
- entrance_exam_type
- capacity
- recommendation_support_enabled
- training_program_list

rules:
- entrance_exam_required must be configurable per school
- if entrance_exam_required = false, admission may proceed without exam
- if entrance_exam_required = true, official entrance exam is mandatory
- school configuration changes must not silently rewrite past admissions

event_flow:
- school_config_updated
- admission_rule_checked
- entrance_exam_path_selected
- admission_path_confirmed

constitution_alignment:
- explicit school policy
- no hidden admission rule changes

final_rule:
Each school must explicitly define whether admission requires an entrance exam.
