# ============================================================
# CIVILIZATION SYNC POLICY
# ============================================================

status: canonical
layer: 080.policy
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define policy rules for synchronization handling.

policy_rules:
- all inbound sync must enter inbox first
- all outbound sync must use outbox
- synchronization must use explicit contracts
- synchronization must remain auditable
- incompatible contracts must be rejected or isolated

evaluation_order:
1 contract identity validity
2 contract version validity
3 compatibility classification
4 idempotency basis
5 authorization and boundary checks
6 consume or dispatch eligibility
