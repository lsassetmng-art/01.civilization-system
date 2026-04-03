# ============================================================
# JOB CATEGORY MODEL
# ============================================================

status: canonical
layer: model
scope: work-ui-foundation
component: job-category

owner: Boss
prepared_by: Zero


# ============================================================
# 1. JOB CATEGORIES
# ============================================================

job_categories:
- administration
- education
- military_support
- railway
- retail
- logistics
- agriculture
- fishery
- medical
- religion
- construction
- manufacturing
- finance
- research
- media
- port_operations


# ============================================================
# 2. CATEGORY FIELDS
# ============================================================

category_fields:
- category_id
- category_name
- category_scope
- dominant_resource_types
- dominant_personnel_types
- dominant_kpi_types
- default_time_unit
- incident_profile
- country_variation_supported
- ai_assist_supported


# ============================================================
# 3. DEFAULT TIME UNITS
# ============================================================

default_time_units:
- per_day
- per_shift
- per_week
- per_month
- mixed_cycle


# ============================================================
# 4. FINAL RULE
# ============================================================

Every work UI must belong
to a defined job category
before screen logic is built.
