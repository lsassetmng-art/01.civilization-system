# ============================================================
# MEDICAL CRISIS AND OVERCAPACITY MODEL
# ============================================================

status: canonical
layer: model
scope: medical-work-ui
component: medical-crisis-and-overcapacity

owner: Boss
prepared_by: Zero


# ============================================================
# 1. CRISIS TYPES
# ============================================================

crisis_types:
- emergency_overflow
- epidemic_or_cluster_case
- staff_shortage
- supply_shortage
- isolation_failure
- intake_surge_after_disaster
- military_casualty_wave
- transport_delay_for_patients
- infrastructure_failure
- reputational_trust_crisis


# ============================================================
# 2. RESPONSE ACTIONS
# ============================================================

response_actions:
- activate_overflow_protocol
- divert_noncritical_patients
- activate_isolation_protocol
- request_external_support
- suspend_noncritical_procedures
- emergency_reassign_staff
- emergency_shared_supply_protocol
- activate_mass_casualty_mode
- public_guidance_notice
- memorial_and_family_support_response


# ============================================================
# 3. FINAL RULE
# ============================================================

Medical crisis handling must expose
that capacity failure is clinical,
logistical, ethical, and reputational at once.
