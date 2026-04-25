# ============================================================
# AIWORKER OS OPERATION POLICY
# ============================================================

status: canonical
system: AiworkerOS
layer: 070.operations
owner: Boss
prepared_by: Zero

operational_scope:
- worker onboarding
- activation and suspension
- cooldown and maintenance
- repair and rebuild
- availability and queue operation
- assignment rotation
- audit review
- exception handling

operation_rules:
- suspended workers are not assignment-eligible
- repair and rebuild states must be explicitly recorded
- cooldown and maintenance states affect assignment eligibility
- operational changes must append audit history
- emergency restriction updates must not skip logging

final_rule:
Worker operation is governed as stateful infrastructure,
not as ad hoc front-end behavior.
