# ============================================================
# RECRUITMENT UI MODEL
# ============================================================

status: canonical
layer: model
scope: insurance-realestate-recruitment-services
component: recruitment-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. REQUIRED SURFACES
# ============================================================

required_surfaces:
- recruitment_home
- job_search
- job_detail
- company_profile_surface
- application_flow
- saved_jobs_surface
- application_history
- recruitment_notice_surface


# ============================================================
# 2. REQUIRED FIELDS
# ============================================================

recruitment_ui_fields:
- operator_id
- user_id
- visible_job_set
- job_match_summary
- skill_profile
- region_profile
- application_permission_profile
- nation_regulation_profile
- pending_application_state
- institution_context_banner


# ============================================================
# 3. ACTIONS
# ============================================================

recruitment_ui_actions:
- search_jobs
- open_job_detail
- open_company_profile
- apply_to_job
- save_job
- review_application_history
- review_notices


# ============================================================
# 4. FINAL RULE
# ============================================================

Recruitment UI must prioritize
job truth,
eligibility clarity,
and application traceability.
