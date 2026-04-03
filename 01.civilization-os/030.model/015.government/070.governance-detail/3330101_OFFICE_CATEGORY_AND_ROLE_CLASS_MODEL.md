# ============================================================
# OFFICE CATEGORY AND ROLE CLASS MODEL
# ============================================================

status: canonical
layer: model
scope: official-executive-and-elite-appointment-builder
component: office-category-and-role-class

owner: Boss
prepared_by: Zero


# ============================================================
# 1. OFFICE CATEGORIES
# ============================================================

office_categories:
- senior_bureaucratic_office
- cabinet_level_office
- deputy_executive_office
- state_enterprise_executive
- railway_executive
- port_authority_executive
- education_institution_leader
- health_institution_leader
- military_high_command
- police_or_internal_security_command
- religious_high_office
- reconstruction_authority_office
- local_governance_high_office
- advisory_council_high_office


# ============================================================
# 2. ROLE CLASS FIELDS
# ============================================================

role_class_fields:
- office_id
- office_name
- office_category
- office_rank
- office_scope
- office_confirmation_required
- office_security_sensitivity
- office_public_visibility
- office_term_style
- office_removal_sensitivity
- office_succession_need


# ============================================================
# 3. FINAL RULE
# ============================================================

Every elite office must define
what kind of office it is,
how sensitive it is,
and how replaceable it is.
