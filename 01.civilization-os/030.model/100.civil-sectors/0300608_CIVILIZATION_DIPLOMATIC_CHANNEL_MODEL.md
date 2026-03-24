# ============================================================
# CIVILIZATION DIPLOMATIC CHANNEL MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical diplomatic channel model.

model_type:
- diplomatic relation truth model

primary_key:
- diplomatic_channel_id

natural_key:
- source_nation_id
- target_nation_id
- channel_code

fields:
- diplomatic_channel_id
- source_nation_id
- target_nation_id
- channel_code
- channel_status
- channel_class
- legal_basis_ref
- effective_from
- effective_until
- created_at
- updated_at

channel_status_enum:
- active
- restricted
- suspended
- closed
- archived

truth_boundary:
Diplomatic channel truth belongs to CivilizationOS diplomatic domain.
