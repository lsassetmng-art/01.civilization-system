# 080_PERSONA-OS_POLICY_OVERVIEW

status: canonical-draft-deepened
system: PersonaOS
layer: policy
domain: policy
canonical: candidate
path: 080.policy/080_PERSONA-OS_POLICY_OVERVIEW.md
deepened_at: 20260417_154213

purpose:
Defines the allow, block, retention, and exception rules for the policy area.

policy_scope:
- what is allowed
- what is blocked
- decision boundary
- lifecycle or retention rule where applicable
- exception handling where applicable

policy_decisions:
- allow condition
- deny condition
- expiry or retention condition where applicable
- override or exception condition where applicable

mandatory_policy_controls:
- no ambiguous allow or deny condition
- no silent override
- no missing retention or expiry rule where applicable

review_targets:
- add exact allow or deny conditions
- add exact retention periods
- add exact exception rules
