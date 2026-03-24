# ============================================================
# PERSONA PACKAGE COMPOSITION MODEL
# ============================================================

status: canonical
layer: 030.model
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical persona package composition model.

model_type:
- package composition truth model

primary_key:
- persona_package_composition_id

natural_key:
- package_code
- composition_code
- composition_version

fields:
- persona_package_composition_id
- package_code
- composition_code
- composition_version
- composition_status
- composition_summary
- composition_hash
- source_state_version
- effective_from
- effective_until
- created_at
- updated_at

composition_status_enum:
- draft
- approved
- active
- superseded
- invalidated
- archived

contract_version_rule:
Package compositions must expose explicit version semantics.

truth_boundary:
Package composition truth belongs to PersonaOS expression-composition domain.
