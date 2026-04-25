# PERSONA TRUST FAMILY TIER A STATUS AND VERIFICATION MATRIX

status: tier-a-exactness-ready
system: PersonaOS
layer: implementation
confirmed_at: 20260418_181922

purpose:
Fixes exact status semantics for sign and key family behavior.

sign_event_statuses:
- sign_succeeded
- sign_rejected
- sign_failed

keygen_once_statuses:
- key_created
- key_rejected
- key_failed

keys_by_id_statuses:
- key_found
- key_not_found
- key_unavailable

keys_current_statuses:
- active_key_set_available
- active_key_set_empty
- active_key_set_unavailable

verification_support_meanings:
- key_found = historical or referenced verification material available
- active_key_set_available = currently active verification-safe set available
- key_unavailable = internal or policy-limited inability to serve requested material

status_rules:
- sign_rejected remains distinct from sign_failed
- key_not_found remains distinct from key_unavailable
- active_key_set_empty remains distinct from active_key_set_unavailable
- trust family statuses must stay distinct from snapshot verification statuses

