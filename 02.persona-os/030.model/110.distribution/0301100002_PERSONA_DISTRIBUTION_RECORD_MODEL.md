# ============================================================
# PERSONA DISTRIBUTION RECORD MODEL
# ============================================================

status: canonical
layer: model
domain: distribution
system: persona-os
owner: Boss
prepared_by: Zero

model_name: persona_distribution_record

core_fields:
persona_distribution_record_id
package_id
distribution_channel_code
distribution_status
release_scope
published_at
withdrawn_at
created_at
updated_at

rules:
Distribution record tracks release channel state.
Distribution authority remains policy-controlled.
