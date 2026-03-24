# ============================================================
# CIVILIZATION LOGISTICS POLICY
# ============================================================

status: canonical
layer: 080.policy
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for logistics.

policy_rules:
- shipments require legal and route basis
- duplicate effective shipment must be prevented
- blocked routes must not process silently
- shipment truth must remain canonical

evaluation_order:
1 route legality
2 shipment identity validity
3 idempotency basis validity
4 execution eligibility
