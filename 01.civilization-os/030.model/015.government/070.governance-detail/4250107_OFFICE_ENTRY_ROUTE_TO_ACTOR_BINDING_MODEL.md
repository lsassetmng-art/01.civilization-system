# ============================================================
# OFFICE ENTRY ROUTE TO ACTOR BINDING MODEL
# ============================================================

status: canonical
layer: model
scope: office-eligibility-grand-play-binding
component: office-entry-route-to-actor-binding

owner: Boss
prepared_by: Zero


# ============================================================
# 1. ENTRY ROUTE BINDINGS
# ============================================================

bindings:
- public_exam_entry -> user_persona
- public_exam_entry -> ai_human
- merit_screening_entry -> user_persona
- merit_screening_entry -> ai_human
- ministerial_appointment_entry -> user_persona
- ministerial_appointment_entry -> ai_human
- monarch_appointment_entry -> user_persona
- monarch_appointment_entry -> ai_human
- party_recommendation_entry -> user_persona
- party_recommendation_entry -> ai_human
- military_service_transfer_entry -> user_persona
- military_service_transfer_entry -> ai_human
- technocratic_selection_entry -> user_persona
- technocratic_selection_entry -> ai_human
- emergency_state_appointment_entry -> user_persona
- emergency_state_appointment_entry -> ai_human


# ============================================================
# 2. FINAL RULE
# ============================================================

Human-only entry routes
must bind only to human category actors
unless a nation-specific office rule says otherwise.
