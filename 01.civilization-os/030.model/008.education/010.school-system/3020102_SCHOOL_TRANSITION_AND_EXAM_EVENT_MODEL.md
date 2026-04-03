# ============================================================
# SCHOOL TRANSITION AND EXAM EVENT MODEL
# ============================================================

status: canonical
layer: model
scope: school-progression-and-branching-seed
component: school-transition-and-exam-event

owner: Boss
prepared_by: Zero


# ============================================================
# 1. EVENT FAMILY
# ============================================================

event_family:
- primary_school_entry
- lower_secondary_entry
- upper_secondary_route_selected
- exam_preparation_started
- entrance_exam_taken
- entrance_exam_result_received
- academic_path_confirmed
- non_academic_path_confirmed


# ============================================================
# 2. BRANCH TYPES
# ============================================================

branch_types:
- general_academic
- technical
- commercial
- legal_administrative
- maritime_fishery
- arts_music_dance
- military_or_service_preparation
- direct_work_entry
- family_business_entry
- unstable_or_interrupted_route


# ============================================================
# 3. FINAL RULE
# ============================================================

Transition and exam events must determine
both school continuity and later life-course sorting.
