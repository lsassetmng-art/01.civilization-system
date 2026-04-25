# ============================================================
# PERSONA OS SECURITY CORE COMPARISON
# ============================================================

status: canonical
layer: meta
domain: semantic-review
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Compares security-domain core layers
to review semantic boundary quality.

# ============================================================
# 1. CONSTITUTION
# ============================================================

# ============================================================
# PERSONA SECURITY CONSTITUTION OVERVIEW
# ============================================================

status: canonical
layer: constitution
domain: security
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines the constitutional role of security in PersonaOS.

summary:
Security protects truth,
rights,
governance,
and execution safety
through fail-closed protection rules.

constitutional_principles:
unsafe mutation must fail closed
truth must remain protected
security controls are not optional where authority is at risk

# ============================================================
# 2. ARCHITECTURE
# ============================================================

# ============================================================
# PERSONA SECURITY ARCHITECTURE OVERVIEW
# ============================================================

status: canonical
layer: architecture
domain: security
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines the structural overview of PersonaOS security domain.

summary:
Security defines protection boundaries for truth, draft, release,
external-rights execution, runtime hosting, and sensitive state handling.

# ============================================================
# 3. MODEL
# ============================================================

# ============================================================
# PERSONA SECURITY MODEL OVERVIEW
# ============================================================

status: canonical
layer: model
domain: security
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines the overview of security models.

summary:
Security models define security state, protection markers,
gate status, and security-relevant audit linkage.

# ============================================================
# PERSONA SECURITY STATE MODEL
# ============================================================

status: canonical
layer: model
domain: security
system: persona-os
owner: Boss
prepared_by: Zero

model_name: persona_security_state

purpose:
Defines the canonical security state record for a persona.

core_fields:
persona_security_state_id
persona_id
security_status
approval_gate_status
export_gate_status
hosting_security_status
last_security_review_at
created_at
updated_at

rules:
Security state belongs to PersonaOS.
Security state must remain explicit and auditable.
Security state does not transfer authority outside PersonaOS.

# ============================================================
# PERSONA SECURITY IDENTITY MODEL
# ============================================================

status: canonical
layer: model
domain: security
system: persona-os
owner: Boss
prepared_by: Zero

model_name: persona_security_identity

purpose:
Defines the canonical security identity
associated with a persona for authentication
and authorization-bound handling.

core_fields:
persona_security_identity_id
persona_id
identity_scope
identity_status
authentication_binding
authorization_binding
created_at
updated_at

rules:
Security identity belongs to PersonaOS.
Security identity must remain explicit and auditable.
Security identity does not by itself grant unrestricted access.

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

# ============================================================
# PERSONA CREDENTIAL MODEL
# ============================================================

status: canonical
layer: model
domain: security
system: persona-os
owner: Boss
prepared_by: Zero

model_name: persona_credential

purpose:
Defines the canonical credential model
for persona authentication mechanisms.

core_fields:
persona_credential_id
persona_id
credential_type
credential_status
credential_reference
issued_at
expires_at
created_at
updated_at

credential_type_examples:
key
token
certificate

rules:
Credential handling must remain policy-bound.
Credentials must remain auditable and revocable.

# ============================================================
# PERSONA GUARDRAIL MODEL
# ============================================================

status: canonical
layer: model
domain: security
system: persona-os
owner: Boss
prepared_by: Zero

model_name: persona_guardrail

purpose:
Defines the canonical guardrail model
for safe persona behavior restrictions.

core_fields:
persona_guardrail_id
persona_id
guardrail_scope
guardrail_status
guardrail_summary
created_at
updated_at

rules:
Guardrails exist to preserve safe persona behavior.
Guardrails must remain explicit and policy-bound.

# ============================================================
# PERSONA BEHAVIOR CONSTRAINT MODEL
# ============================================================

status: canonical
layer: model
domain: security
system: persona-os
owner: Boss
prepared_by: Zero

model_name: persona_behavior_constraint

purpose:
Defines the canonical model
for behavior limitation rules applied to a persona.

core_fields:
persona_behavior_constraint_id
persona_id
constraint_scope
constraint_status
constraint_summary
created_at
updated_at

rules:
Behavior constraints must remain explicit.
Behavior constraints are narrower execution rules
within the broader safety boundary of persona guardrails.

# ============================================================
# 4. POLICY
# ============================================================

# ============================================================
# PERSONA SECURITY POLICY OVERVIEW
# ============================================================

status: canonical
layer: policy
domain: security
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines the overview of security policies.

summary:
Security policy governs gate enforcement,
truth protection,
fail-closed behavior,
and non-optional protection controls.

# ============================================================
# 5. INTERFACE
# ============================================================

# ============================================================
# PERSONA SECURITY INTERFACE OVERVIEW
# ============================================================

status: canonical
layer: interface
domain: security
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines the overview of security interfaces.

summary:
Security interfaces define explicit gate results,
rejection results,
and security-relevant response semantics.

# ============================================================
# 6. REVIEW QUESTIONS
# ============================================================

1. Is security clearly separated from identity truth?
2. Is security clearly separated from governance and approval authority?
3. Are security state / security identity / access policy / credential / guardrail / behavior constraint correctly separated?
4. Is security clearly separated from external-rights and release/package authority?
5. Do policy and interface keep security mutation explicit, bounded, and auditable?
