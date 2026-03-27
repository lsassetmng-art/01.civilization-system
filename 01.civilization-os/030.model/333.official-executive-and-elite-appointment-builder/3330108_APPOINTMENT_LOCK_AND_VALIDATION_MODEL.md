# ============================================================
# APPOINTMENT LOCK AND VALIDATION MODEL
# ============================================================

status: canonical
layer: model
scope: official-executive-and-elite-appointment-builder
component: appointment-lock-and-validation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. LOCK RULE
# ============================================================

lock_rule:
- office_category_base is structure-layer locked after nation creation
- formal_appointment_type base is structure-layer locked after nation creation
- confirmation requirement base is structure-layer locked after nation creation
- default succession type base is structure-layer locked after nation creation
- purge support ceiling is structure-layer locked after nation creation

editable_scope_examples:
- practical_selection_influence_weights
- patronage_visibility
- corruption_risk
- loyalty_screening_intensity
- faction_capture_risk
- political_protection_strength
- advancement_speed
- merit_visibility
- current_appointment_discretion


# ============================================================
# 2. VALIDATION RULES
# ============================================================

validation_rules:
- every critical office must define a formal appointing authority
- every high-sensitivity office must define a succession rule
- hereditary_pipeline cannot exist without hereditary-compatible office logic
- military_nomination requires military-linked office class
- doctrine_nomination requires doctrine-linked office class
- purge_supported requires extraordinary removal path definition
- interim replacement must exist for removable high offices
- hidden selector weights must not reference nonexistent influence source


# ============================================================
# 3. FINAL RULE
# ============================================================

Appointment Builder must reject
any office design that cannot answer
who appoints, who blocks, who removes,
and who replaces.
