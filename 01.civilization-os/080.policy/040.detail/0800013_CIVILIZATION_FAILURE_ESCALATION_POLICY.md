# ============================================================
# CIVILIZATION FAILURE ESCALATION POLICY
# ============================================================

status: canonical
layer: 080.policy
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for failure escalation.

policy_rules:
- transient failures may retry within bounded budget
- terminal failures must stop looping
- dead-lettered units must remain operator-visible
- escalation must preserve traceability
- escalation must not bypass constitutional boundary rules

escalation_rule:
Repeated failure or terminal classification must transition
from retry path to visible escalation path.
