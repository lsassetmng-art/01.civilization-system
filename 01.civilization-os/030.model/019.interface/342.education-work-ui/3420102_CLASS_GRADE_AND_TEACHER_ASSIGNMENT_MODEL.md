# ============================================================
# CLASS GRADE AND TEACHER ASSIGNMENT MODEL
# ============================================================

status: canonical
layer: model
scope: education-work-ui
component: class-grade-and-teacher-assignment

owner: Boss
prepared_by: Zero


# ============================================================
# 1. CLASS AND GRADE FIELDS
# ============================================================

class_and_grade_fields:
- school_id
- grade_id
- class_group_id
- student_count
- support_need_level
- academic_load_level
- discipline_risk_level
- event_load_level
- progression_pressure_level


# ============================================================
# 2. TEACHER FIELDS
# ============================================================

teacher_fields:
- teacher_group_id
- available_homeroom_teachers
- available_subject_teachers
- qualification_tags
- workload_level
- guidance_skill_level
- discipline_skill_level
- event_support_skill_level
- reassignment_cost
- burnout_risk


# ============================================================
# 3. ASSIGNMENT ACTIONS
# ============================================================

assignment_actions:
- assign_homeroom_teacher
- assign_subject_teacher
- rebalance_teacher_load
- add_support_teacher
- create_small_guidance_group
- merge_or_split_class_support
- emergency_teacher_substitution
- exam_support_assignment


# ============================================================
# 4. FINAL RULE
# ============================================================

School operation must reflect
that class quality depends on
teacher fit, load balance,
and student-group difficulty.
