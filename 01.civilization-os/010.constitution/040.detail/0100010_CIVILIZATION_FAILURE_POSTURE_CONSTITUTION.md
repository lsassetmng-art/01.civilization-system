# ============================================================
# CIVILIZATION FAILURE POSTURE CONSTITUTION
# ============================================================

status: canonical
layer: 010.constitution
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define constitutional failure posture for CivilizationOS.

core_posture:
- fail closed on unsafe cross-domain mutation
- preserve traceability under failure
- preserve truth ownership under failure
- prefer degraded continuity over silent corruption

constitutional_failure_rules:
- failure must not implicitly reassign authority
- failure must not silently convert reflected state into truth
- failure must remain observable and attributable
- retry must not bypass idempotency requirements
