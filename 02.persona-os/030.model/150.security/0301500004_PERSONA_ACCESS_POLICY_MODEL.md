# ============================================================
# PERSONA ACCESS POLICY MODEL
# ============================================================

status: canonical
layer: model
domain: security
system: persona-os
owner: Boss
prepared_by: Zero

model_name: persona_access_policy

purpose:
Defines the canonical access policy
for persona-related permissions and access rules.

core_fields:
persona_access_policy_id
persona_id
policy_scope
policy_status
permission_summary
restriction_summary
created_at
updated_at

rules:
Access policy must remain explicit.
Access policy must be enforceable through PersonaOS security controls.
