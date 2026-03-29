# ============================================================
# SCHOOL ADMISSION RULE MODEL
# ============================================================

status: canonical
layer: model
scope: education-qualification-announcement
component: school-admission-rule

owner: Boss
prepared_by: Zero


# ============================================================
# 1. BASIC RULES
# ============================================================

basic_rules:
- public_elementary_school may use non-exam admission
- public_junior_high_school may use non-exam admission
- public_high_school may be nation-specific
- private_elementary_school uses exam admission
- private_junior_high_school uses exam admission
- private_high_school uses exam admission
- university_and_above uses exam admission


# ============================================================
# 2. EXAM REQUIRED GROUPS
# ============================================================

exam_required_groups:
- private_elementary_school
- private_junior_high_school
- private_high_school
- university
- graduate_school
- administrative_school_when_exam_based
- military_school_when_exam_based
- technical_school_when_exam_based


# ============================================================
# 3. FINAL RULE
# ============================================================

Exam admission schools
must require an application form
before examination.
