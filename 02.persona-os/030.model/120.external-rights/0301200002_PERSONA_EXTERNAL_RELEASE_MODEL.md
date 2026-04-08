# ============================================================
# PERSONA EXTERNAL RELEASE MODEL
# ============================================================

status: canonical
layer: model
domain: external-rights
system: persona-os
owner: Boss
prepared_by: Zero

model_name: persona_external_release

core_fields:
persona_external_release_id
snapshot_id
external_release_status
target_platform_code
release_policy_ref
approved_rights_scope
created_at
updated_at

rules:
External release is controlled by PersonaOS authority.
External platforms are not rights-origin truth holders.
