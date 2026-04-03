# ============================================================
# APPOINTMENT RULE AND ELIGIBILITY MODEL
# ============================================================

status: canonical
layer: model
scope: official-executive-and-elite-appointment-builder
component: appointment-rule-and-eligibility

owner: Boss
prepared_by: Zero


# ============================================================
# 1. APPOINTMENT TYPES
# ============================================================

appointment_types:
- executive_appointment
- ruler_appointment
- legislative_confirmation_appointment
- direct_legislative_selection
- bureaucracy_promotion_appointment
- military_nomination_appointment
- doctrine_nomination_appointment
- elite_council_appointment
- city_delegate_appointment
- emergency_provisional_appointment


# ============================================================
# 2. ELIGIBILITY FACTORS
# ============================================================

eligibility_factors:
- education_requirement
- qualification_requirement
- service_record_requirement
- loyalty_requirement
- family_line_requirement
- noble_origin_requirement
- business_elite_requirement
- doctrinal_purity_requirement
- faction_support_requirement
- age_requirement
- term_limit_requirement
- security_clearance_requirement


# ============================================================
# 3. RULE FIELDS
# ============================================================

appointment_rule_fields:
- office_id
- formal_appointment_type
- formal_appointing_authority
- confirmation_body
- eligibility_profile
- disqualifying_conditions
- practical_selection_influence_weights
- emergency_exception_supported


# ============================================================
# 4. FINAL RULE
# ============================================================

Formal eligibility
and practical selectability
must both be explicitly modeled.
