# ============================================================
# NOTIFICATION COMMON POLICY
# ============================================================

status: canonical
layer: 080.policy
system: persona-os
owner: Boss
prepared_by: Zero

policy:
Notification should remain useful, quiet, contextual, and non-authoritative.

rules:
- notification exists to inform and guide
- grouped summary should be preferred over spam
- quiet hours should suppress non-critical noise
- secretary-style wording must remain advisory

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
