# ============================================================
# EDUCATION OPERATION MODEL
# ============================================================

status: canonical
layer: model
scope: industry-pack
component: education-operation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. CORE FLOW
# ============================================================

- curriculum_defined
- class_or_course_opened
- enrollment_processed
- instruction_delivered
- progress_tracked
- completion_recorded
- certification_issued_if_applicable


# ============================================================
# 2. KEY OBJECTS
# ============================================================

- curriculum
- course
- class_group
- enrollment_record
- completion_record
- certification_record


# ============================================================
# 3. FINAL RULE
# ============================================================

Education operation must support both content definition
and delivery-side execution.
