# ============================================================
# PERSONA EXTERNAL USAGE RESULT CONTRACT MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Represent outbound usage-related sync results returned by PersonaOS.

role:
Canonical outbound contract for permission, access, release,
and binding state.

primary_key:
- result_contract_id

natural_key:
- target_os
- target_user_id
- persona_id
- correlation_id
- result_contract_type

fields:
- result_contract_id
- target_os
- target_company_id
- target_user_id
- persona_id
- result_contract_type
- usage_permission_status
- access_state
- release_validity
- binding_state
- granted_scope
- denied_scope
- invalid_reason
- source_persona_state_version
- source_persona_release_version
- contract_version
- correlation_id
- causation_id
- built_at
- created_at

target_os_enum:
- business-os
- life-os
- game-os
- streaming-os
- other-approved-os

result_contract_type_enum:
- usage_permission_result
- access_state_result
- release_validity_result
- usage_binding_result

usage_permission_status_enum:
- pending
- granted
- denied
- revoked
- expired

state_transition_note:
Usage result contracts are immutable snapshots.
A new Persona-side state change produces a new contract rather than mutating an old one.

contract_version_rule:
External OS must treat contract_version as explicit contract schema version.

versioning_rule:
source_persona_state_version must identify the Persona-side state basis
used to build the result.

idempotency_rule:
The same effective Persona-side state version for the same target context
must not emit duplicate effective contracts without explicit rebroadcast intent.

truth_boundary:
External OS consumes reflected usage state only.
PersonaOS remains truth holder.

rules:
- permission and trust must be separate contracts
- target OS consumes this as reflected state, not truth ownership
- PersonaOS remains truth holder
