# ============================================================
# QUALIFICATION EXAM TICKET MODEL
# ============================================================

status: canonical
layer: model
scope: education-qualification-announcement
component: qualification-exam-ticket

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

purpose:
Represent the formal examination ticket
for qualification exams.


# ============================================================
# 2. REQUIRED FIELDS
# ============================================================

required_fields:
- exam_ticket_id
- nation_id
- qualification_family
- qualification_code
- qualification_tier
- sales_start_at
- sales_end_at
- exam_date
- applicant_conditions
- payment_currency_set
- ticket_price
- marketplace_product_ref
- status


# ============================================================
# 3. FINAL RULE
# ============================================================

Qualifications themselves
must not be sold.

Only examination access
may be sold through exam tickets.
