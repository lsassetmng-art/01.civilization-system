# ============================================================
# CIVIL SERVICE ENTRY ROUTE MODEL
# ============================================================

status: canonical
layer: model
scope: civil-service-eligibility
component: civil-service-entry-route

owner: Boss
prepared_by: Zero


# ============================================================
# 1. ENTRY ROUTES
# ============================================================

entry_routes:
- public_exam_entry
- merit_screening_entry
- ministerial_appointment_entry
- monarch_appointment_entry
- party_recommendation_entry
- military_service_transfer_entry
- technocratic_selection_entry
- emergency_state_appointment_entry


# ============================================================
# 2. FINAL RULE
# ============================================================

Civil service entry route
must be nation-sensitive
and office-sensitive.
