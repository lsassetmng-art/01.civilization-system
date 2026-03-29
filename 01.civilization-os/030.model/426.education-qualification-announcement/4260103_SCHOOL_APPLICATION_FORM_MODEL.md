# ============================================================
# SCHOOL APPLICATION FORM MODEL
# ============================================================

status: canonical
layer: model
scope: education-qualification-announcement
component: school-application-form

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

purpose:
Represent the formal application form
for school admission.


# ============================================================
# 2. REQUIRED FIELDS
# ============================================================

required_fields:
- application_form_id
- nation_id
- school_id
- school_level
- operator_type
- sales_start_at
- sales_end_at
- exam_date
- admission_cycle
- applicant_conditions
- payment_currency_set
- form_price
- marketplace_product_ref
- status


# ============================================================
# 3. FINAL RULE
# ============================================================

Application forms
must be sold through Marketplace
for exam-based schools.
