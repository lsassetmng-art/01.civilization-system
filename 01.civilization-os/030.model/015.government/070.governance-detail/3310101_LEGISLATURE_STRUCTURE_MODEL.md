# ============================================================
# LEGISLATURE STRUCTURE MODEL
# ============================================================

status: canonical
layer: model
scope: legislature-builder
component: legislature-structure

owner: Boss
prepared_by: Zero


# ============================================================
# 1. CHAMBER CONFIGURATION
# ============================================================

chamber_config_types:
- no_legislature
- unicameral
- bicameral
- tricameral_exceptional
- council_federation
- city_delegate_union
- ceremonial_legislature


# ============================================================
# 2. CHAMBER FIELDS
# ============================================================

chamber_fields:
- chamber_id
- chamber_name
- chamber_role
- chamber_rank
- chamber_exists
- seat_count
- chamber_selection_type
- chamber_term_length
- chamber_dissolution_allowed
- chamber_budget_power
- chamber_law_power
- chamber_oversight_power
- chamber_impeachment_power
- chamber_appointment_confirmation_power


# ============================================================
# 3. CHAMBER ROLES
# ============================================================

chamber_roles:
- popular_representation
- regional_representation
- aristocratic_representation
- city_representation
- professional_representation
- ceremonial_review
- constitutional_guard
- executive_support
- military_shadow_review
- doctrine_review


# ============================================================
# 4. FINAL RULE
# ============================================================

Every legislature must explicitly define
why each chamber exists
and what kind of representation it claims.
