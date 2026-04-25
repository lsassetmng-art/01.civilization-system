# ============================================================
# PERSONA RETRY PROFILE MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical retry profile model for PersonaOS.

model_type:
- retry governance truth model

primary_key:
- persona_retry_profile_id

natural_key:
- profile_scope
- profile_code
- profile_version

fields:
- persona_retry_profile_id
- profile_scope
- profile_code
- profile_version
- profile_status
- retry_summary
- backoff_summary
- terminal_cutoff_summary
- created_at
- updated_at

profile_status_enum:
- draft
- approved
- active
- superseded
- archived

contract_version_rule:
Persona retry profiles must expose explicit version semantics.

truth_boundary:
Persona retry profile truth belongs to PersonaOS cross-cutting-completion domain.
