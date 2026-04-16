# ============================================================
# RESPONSIBLE GAMING PROTECTION ARCHITECTURE
# ============================================================

status: draft-for-canonical-update
system: civilization-os
layer: architecture
domain: gambling-governance
document_type: architecture
owner: Boss
prepared_by: Zero

purpose:
Defines platform-side protection architecture for self-exclusion, cooldown,
forced pause, risk escalation, and intervention.

principles:
- player protection is a first-class platform concern
- protection state is not identical to wager eligibility result
- escalation, pause, and exclusion require auditability
- protection controls may override game-local progression
