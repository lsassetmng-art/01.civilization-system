# PERSONA LIFECYCLE TIER E STATUS AND VISIBILITY MATRIX

status: tier-e-exactness-ready
system: PersonaOS
layer: implementation
confirmed_at: 20260418_183303

purpose:
Fixes exact lifecycle status and retrieval visibility semantics.

persona_create_statuses:
- persona_created
- persona_create_rejected
- persona_create_failed

persona_event_history_statuses:
- history_available
- history_empty
- history_rejected
- history_failed

visibility_dimensions:
- requester_authority
- subject_scope
- time_window
- pagination_scope
- policy_visibility_scope

status_rules:
- history_available remains distinct from history_empty
- history_rejected remains distinct from history_failed
- persona_create_rejected remains distinct from persona_create_failed
- retrieval visibility filtering must not imply hidden truth mutation access

