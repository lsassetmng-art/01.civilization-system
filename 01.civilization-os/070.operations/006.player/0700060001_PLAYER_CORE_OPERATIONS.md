# ============================================================
# PLAYER CORE OPERATIONS
# ============================================================

status: canonical
layer: operations
domain: player
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines core operational handling for players.

scope:
Covers creation review, activation,
limitation, suspension, archival,
reactivation where allowed,
incident containment,
and historical audit.

design_intent:
Player changes affect live participation.
Core player operations must therefore preserve explicit decisions,
traceable state changes, and safe separation between live and historical states.

canonical_rules:
- Activation must follow valid identity and role basis.
- Suspension and limitation must preserve prior active state trace.
- Archived players must not be reactivated silently.
- Historical-only handling must not imply live participation.
- Containment must preserve incident reason and authority trace.

required_behavior:
- Support activation and suspension.
- Support limitation and restoration.
- Support archival and history.
- Support incident containment.
- Support audit-safe inspection and controlled reactivation.

state_model:
player_operational_state:
- prepared
- under_review
- active
- limited
- suspended
- archived
- historical_only
- contained
- audit_review

validation_rules:
- player_ref is required.
- identity_ref is required for activation.
- primary_role is required for active or limited state.
- archived player must not re-enter live state without explicit reactivation path.
- contained state must preserve incident metadata.

transition_rules:
- prepared -> under_review
- under_review -> active
- active -> limited
- limited -> active
- active -> suspended
- suspended -> active
- active -> archived
- archived -> historical_only
- active -> contained
- contained -> audit_review

failure_codes:
- PLAYER_OP_REF_MISSING
- PLAYER_OP_IDENTITY_REQUIRED
- PLAYER_OP_ROLE_REQUIRED
- PLAYER_OP_REACTIVATION_DENIED
- PLAYER_OP_INCIDENT_TRACE_MISSING

example_scenarios:
- A player is suspended after a control incident and later restored with full historical trace preserved.
