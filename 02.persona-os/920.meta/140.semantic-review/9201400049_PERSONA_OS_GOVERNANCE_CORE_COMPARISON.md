# ============================================================
# PERSONA OS GOVERNANCE CORE COMPARISON
# ============================================================

status: canonical
layer: meta
domain: semantic-review
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Compares governance-domain core layers
to review semantic boundary quality.

# ============================================================
# 1. CONSTITUTION
# ============================================================

# ============================================================
# PERSONA GOVERNANCE CONSTITUTION OVERVIEW
# ============================================================

status: canonical
layer: constitution
domain: governance
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines the constitutional role of governance in PersonaOS.

summary:
Governance controls approval,
moderation,
eligibility,
and authority-safe decisions
for persona-related change.

constitutional_principles:
governance is explicit
governance must not be bypassed
authority decisions must remain auditable

# ============================================================
# 2. ARCHITECTURE
# ============================================================

# ============================================================
# PERSONA GOVERNANCE ARCHITECTURE OVERVIEW
# ============================================================

status: canonical
layer: architecture
domain: governance
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines the structural overview of PersonaOS governance domain.

summary:
Governance defines approval authority, moderation pathways,
eligibility decisions, and authority-bound state transitions.

# ============================================================
# 3. MODEL
# ============================================================

# ============================================================
# PERSONA GOVERNANCE MODEL OVERVIEW
# ============================================================

status: canonical
layer: model
domain: governance
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines the overview of governance models.

summary:
Governance models define approval state, moderation state,
eligibility decisions, and authority-linked records.

# ============================================================
# PERSONA APPROVAL MODEL
# ============================================================

status: canonical
layer: model
domain: governance
system: persona-os
owner: Boss
prepared_by: Zero

model_name: persona_approval

core_fields:
persona_approval_id
persona_id
approval_scope
approval_status
decision_reason
approved_at
created_at
updated_at

# ============================================================
# 4. POLICY
# ============================================================

# ============================================================
# PERSONA GOVERNANCE POLICY OVERVIEW
# ============================================================

status: canonical
layer: policy
domain: governance
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines the overview of governance policies.

summary:
Governance policy defines approval rules,
moderation rules,
eligibility rules,
and authority-safe decision behavior.

# ============================================================
# 5. INTERFACE
# ============================================================

# ============================================================
# PERSONA GOVERNANCE INTERFACE OVERVIEW
# ============================================================

status: canonical
layer: interface
domain: governance
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines the overview of governance interfaces.

summary:
Governance interfaces define explicit approval,
moderation,
eligibility,
and decision-result contracts.

# ============================================================
# 6. REVIEW QUESTIONS
# ============================================================

1. Is governance clearly separated from security gate behavior?
2. Is governance clearly separated from builder approval-preparation behavior?
3. Is governance clearly separated from persona truth ownership while still holding approval/eligibility authority?
4. Is governance clearly separated from rights/distribution/package mechanics?
5. Do policy and interface keep governance as approval/moderation/eligibility authority rather than generic mutation authority?
