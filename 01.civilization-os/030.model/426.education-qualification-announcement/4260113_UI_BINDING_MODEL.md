# ============================================================
# EDUCATION QUALIFICATION UI BINDING MODEL
# ============================================================

status: canonical
layer: model
scope: education-qualification-announcement
component: education-qualification-ui-binding

owner: Boss
prepared_by: Zero


# ============================================================
# 1. UI SURFACES
# ============================================================

ui_surfaces:
- marketplace_surface
- announcement_surface
- personal_alert_surface
- personal_profile_surface
- life_course_surface
- school_detail_surface
- qualification_detail_surface


# ============================================================
# 2. REQUIRED BLOCKS
# ============================================================

required_blocks:
- application_form_summary
- exam_ticket_summary
- eligibility_summary
- currency_summary
- sales_period_summary
- exam_schedule_summary
- result_summary
- public_service_route_link


# ============================================================
# 3. FINAL RULE
# ============================================================

UI must present education and qualification
as visible progression systems.
