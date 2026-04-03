# ============================================================
# JOB MASTER MODEL
# ============================================================

status: canonical
layer: model
scope: integrated-master
component: job-master

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines the canonical master structure
for profession categories,
work loops,
screen families,
and nation variations.


# ============================================================
# 2. REQUIRED JOB GROUPS
# ============================================================

required_job_groups:
- retail
- railway
- education
- military_support
- fishery
- religion
- medical


# ============================================================
# 3. REQUIRED FIELDS
# ============================================================

job_master_fields:
- job_id
- job_name
- job_category
- canonical_loop_type
- required_common_components
- required_specialized_components
- dominant_resource_types
- dominant_personnel_types
- dominant_incident_types
- ai_assist_support_level
- nation_variation_priority


# ============================================================
# 4. FINAL RULE
# ============================================================

Every work UI must have
one integrated master entry
that points to loop, screen, and variation logic.
