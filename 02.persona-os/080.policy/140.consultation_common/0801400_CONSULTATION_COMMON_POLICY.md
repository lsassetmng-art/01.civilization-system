# ============================================================
# CONSULTATION COMMON POLICY
# ============================================================

status: canonical
layer: 080.policy
system: persona-os
owner: Boss
prepared_by: Zero

policy:
Consultation exists to support understanding, organization,
proposal, and next-step guidance.

rules:
- consultation may support personal and business thinking
- consultation may support document creation and strategy framing
- consultation must remain non-authoritative
- app-specific plan and UI gating must be defined outside this common layer

# EXACT READY POLICY REINFORCEMENT

status_extension: author-reviewed-with-policy-reinforcement
reinforced_at: 20260417_152041
domain: policy

minimum_policy_requirements:
- define what is allowed
- define what is blocked
- define decision boundary
- define lifecycle or retention rule where applicable
- define exception handling where applicable

mandatory_policy_controls:
- no ambiguous allow or deny condition
- no silent override
- no missing retention or expiry rule where applicable

minimum_policy_acceptance_targets:
- allowed case
- blocked case
- exception or expiry case where applicable
