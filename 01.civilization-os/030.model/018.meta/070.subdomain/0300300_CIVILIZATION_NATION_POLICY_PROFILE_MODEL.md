# ============================================================
# CIVILIZATION NATION POLICY PROFILE MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical nation policy profile model.

model_type:
- governance profile model

primary_key:
- nation_policy_profile_id

natural_key:
- nation_id
- policy_profile_code
- profile_version

fields:
- nation_policy_profile_id
- nation_id
- policy_profile_code
- profile_version
- profile_status
- policy_scope
- policy_parameters
- compatibility_status
- effective_from
- effective_until
- created_at
- updated_at

profile_status_enum:
- active
- superseded
- revoked
- expired

compatibility_status_enum:
- compatible
- limited
- incompatible

truth_boundary:
Nation policy profile truth belongs to CivilizationOS governance domain.
