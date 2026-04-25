# ============================================================
# PERSONA LIFECYCLE STATE PROFILE MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical lifecycle state profile model for PersonaOS.

model_type:
- lifecycle governance truth model

primary_key:
- persona_lifecycle_state_profile_id

natural_key:
- profile_scope
- profile_code
- profile_version

fields:
- persona_lifecycle_state_profile_id
- profile_scope
- profile_code
- profile_version
- profile_status
- state_machine_summary
- allowed_transition_summary
- terminal_state_summary
- created_at
- updated_at

profile_status_enum:
- draft
- approved
- active
- superseded
- archived

contract_version_rule:
Persona lifecycle state profiles must expose explicit version semantics.

truth_boundary:
Persona lifecycle state profile truth belongs to PersonaOS cross-cutting-completion domain.
