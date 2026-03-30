# ============================================================
# PERSONA EXTERNAL TRUST RESULT CONTRACT MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Represent outbound trust-related sync results returned by PersonaOS.

role:
Canonical outbound contract for trust gating values used by external OS domains.

primary_key:
- trust_contract_id

natural_key:
- target_os
- target_user_id
- persona_id
- correlation_id

fields:
- trust_contract_id
- target_os
- target_company_id
- target_user_id
- persona_id
- trust_score
- trust_level
- safety_score
- stability_score
- consistency_score
- evaluation_basis
- source_persona_state_version
- contract_version
- correlation_id
- causation_id
- last_evaluated_at
- built_at
- created_at

trust_level_enum:
- blocked
- low
- medium
- high
- privileged

state_transition_note:
Trust result contracts are immutable snapshots.
Updated trust requires a newly built contract.

contract_version_rule:
Trust result contracts must carry explicit contract_version.

versioning_rule:
source_persona_state_version must identify the Persona-side state basis
used to derive trust values.

idempotency_rule:
The same trust basis for the same target context must not emit duplicate
effective trust contracts without explicit rebroadcast intent.

truth_boundary:
External OS consumes reflected trust state only.
PersonaOS remains truth holder.

rules:
- trust values must not be merged into permission semantics
- external OS must combine trust with permission on its side
- PersonaOS is truth holder for trust values
