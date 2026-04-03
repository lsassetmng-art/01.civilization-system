# ============================================================
# CIVILIZATION CAPACITY CONTROL POLICY
# ============================================================

status: canonical
layer: 080.policy
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for load shedding and reroute actions.

policy_rules:
- service, emergency, and control identity basis must remain explicit
- lifted, failed, or reversed control states must remain explicit
- duplicate effective reroute actions must be prevented
- capacity-control truth must remain canonical

evaluation_order:
1 service validity
2 emergency basis validity
3 control identity validity
4 idempotency basis validity
5 execution eligibility
