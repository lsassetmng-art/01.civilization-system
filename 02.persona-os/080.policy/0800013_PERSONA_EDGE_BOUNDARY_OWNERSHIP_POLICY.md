# PERSONA EDGE BOUNDARY OWNERSHIP POLICY

status: confirmed
system: PersonaOS
layer: policy
confirmed_at: 20260418_121148

purpose:
Fixes ownership policy for existing Edge Functions inside PersonaOS.

ownership_policy:
- existing Edge names are accepted as current concrete function names
- Edge names do not automatically equal truth ownership
- truth ownership must be decided by boundary role, not by function label

ownership_rules:
- lifecycle functions may create or retrieve PersonaOS records through approved paths but are not automatically truth owners
- persona-state-apply is not treated as the sole owner of PersonaOS truth; it is treated as orchestrator unless a narrower sub-boundary says otherwise
- state_apply or apply_event_engine remains the truth mutation boundary
- snapshot-issue owns immutable release issuance
- snapshot-revoke and revocation-list own revocation boundary behavior
- sign-event and key functions own trust-side support behavior
- event-validate owns contract validation behavior, not truth ownership
- external_dispatcher and civilization-event-dispatcher own dispatch behavior, not truth ownership

forbidden_policy_misreads:
- do not equate edge name with truth ownership
- do not equate publish_apply with mutable truth ownership by default
- do not equate visual work-state edges with released artifact ownership before lineage binding

