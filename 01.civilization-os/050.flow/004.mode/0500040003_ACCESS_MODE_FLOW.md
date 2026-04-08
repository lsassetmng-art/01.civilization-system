# ============================================================
# ACCESS MODE FLOW
# ============================================================

status: canonical
layer: flow
domain: mode
subdomain: access-mode
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines process flow for access-mode handling.

scope:
Covers actor mapping, onboarding path,
operator path, audit path,
and privilege-escalation rejection.

required_behavior:
- Map actor class to access mode.
- Validate authority for restricted and audit modes.
- Enforce least-privilege path.
- Reject escalation without basis.

flow_state_model:
access_mode_flow_state:
- requested
- actor_bound
- mode_resolved
- authority_checked
- delivered
- blocked

access_mode_sequence:
1. receive access-mode request
2. bind actor class
3. resolve candidate access mode
4. validate least-privilege path
5. check authority for restricted/audit mode
6. deliver allowed access mode
7. block invalid escalation

failure_codes:
- ACCESS_MODE_FLOW_ACTOR_MISSING
- ACCESS_MODE_FLOW_AUTHORITY_REQUIRED
- ACCESS_MODE_FLOW_ESCALATION_DENIED
- ACCESS_MODE_FLOW_ONBOARDING_CONFLICT

example_scenarios:
- A registered new user is routed to onboarding-guided access mode.
- An unauthorized attempt to enter audit mode is blocked.

validation_rules:
- canonical scope binding is required
- invalid or ambiguous state must block delivery
- live and historical paths must remain distinct where applicable

decision_matrix:
- valid request + valid scope + valid path -> deliver
- invalid scope or invalid state -> block
- historical request without history path -> block
- restricted path without authority where relevant -> block
