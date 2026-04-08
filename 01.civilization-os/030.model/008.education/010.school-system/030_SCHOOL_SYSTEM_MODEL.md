# ============================================================
# SCHOOL SYSTEM
# MODEL
# ============================================================

status: draft
layer: model
domain: 008.education
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for school system structures.

# 2. CORE ENTITIES

- school_definition
- school_term
- school_enrollment
- school_status

# 3. STATE MODEL

school_definition:
- school_id
- school_code
- school_type_code
- school_scope
- school_status

school_term:
- school_term_id
- school_id
- term_code
- starts_at
- term_status

school_enrollment:
- school_enrollment_id
- school_id
- student_scope
- enrollment_status
- enrolled_at

school_status:
- school_status_id
- school_id
- active_flag
- operation_status
- changed_at

# 4. INTEGRITY RULES

- school term must belong to one school
- enrollment must preserve school and student scope
- school scope must be explicit
- hidden enrollment mutation is prohibited

