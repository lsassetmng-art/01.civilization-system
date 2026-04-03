# ============================================================
# CIVILIZATION DEAD LETTER PROFILE MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical dead letter profile model.

model_type:
- failure-terminal governance truth model

primary_key:
- dead_letter_profile_id

natural_key:
- profile_scope
- profile_code
- profile_version

fields:
- dead_letter_profile_id
- profile_scope
- profile_code
- profile_version
- profile_status
- dead_letter_summary
- quarantine_summary
- restoration_summary
- effective_from
- effective_until
- created_at
- updated_at

profile_status_enum:
- draft
- approved
- active
- superseded
- revoked
- archived

contract_version_rule:
Dead letter profiles must expose explicit version semantics.

truth_boundary:
Dead-letter-profile truth belongs to CivilizationOS cross-cutting-completion domain.
