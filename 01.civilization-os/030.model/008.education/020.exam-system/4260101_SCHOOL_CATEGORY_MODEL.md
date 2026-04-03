# ============================================================
# SCHOOL CATEGORY MODEL
# ============================================================

status: canonical
layer: model
scope: education-qualification-announcement
component: school-category

owner: Boss
prepared_by: Zero


# ============================================================
# 1. SCHOOL LEVELS
# ============================================================

school_levels:
- elementary_school
- junior_high_school
- high_school
- university
- graduate_school
- vocational_school
- administrative_school
- military_school
- technical_school


# ============================================================
# 2. SCHOOL OPERATOR TYPES
# ============================================================

school_operator_types:
- public_school
- private_school
- national_school
- military_state_school
- religious_school
- public_private_mixed_school


# ============================================================
# 3. FINAL RULE
# ============================================================

School definition
must distinguish education level
from operator type.
