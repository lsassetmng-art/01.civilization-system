# ============================================================
# CIVILIZATION CRIMINAL EVIDENCE CHAIN MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical criminal evidence chain model.

model_type:
- evidence custody truth model

primary_key:
- criminal_evidence_chain_id

natural_key:
- chain_scope
- chain_ref
- evidence_hash

fields:
- criminal_evidence_chain_id
- chain_scope
- chain_ref
- evidence_hash
- chain_status
- source_case_ref
- custody_summary
- source_state_version
- recorded_at
- created_at
- updated_at

chain_status_enum:
- recorded
- admitted
- challenged
- excluded
- archived

truth_boundary:
Criminal-evidence chain truth belongs to CivilizationOS criminal-procedure domain.
