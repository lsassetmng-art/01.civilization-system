# ============================================================
# RECRUITMENT INFORMATION BOARD MODEL
# ============================================================

status: canonical
layer: model
scope: view-only-market-and-board-services
component: recruitment-information-board

owner: Boss
prepared_by: Zero


# ============================================================
# 1. REQUIRED SURFACES
# ============================================================

required_surfaces:
- recruitment_board_home
- featured_jobs
- category_job_lists
- region_job_lists
- skill_demand_summary
- salary_range_summary
- recruitment_notice_surface


# ============================================================
# 2. REQUIRED FIELDS
# ============================================================

required_fields:
- board_id
- nation_or_city_context
- featured_job_set
- category_job_counts
- region_job_counts
- skill_demand_summary
- salary_summary
- notice_set


# ============================================================
# 3. RULES
# ============================================================

rules:
- this service is primarily view-only
- direct job application may route outward to recruitment service if enabled
- category and region filtering are supported
- labor market trend visibility is required


# ============================================================
# 4. FINAL RULE
# ============================================================

Recruitment board exists
to expose labor demand clearly
before application routing.
