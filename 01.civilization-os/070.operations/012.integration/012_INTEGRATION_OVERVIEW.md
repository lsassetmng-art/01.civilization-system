# ============================================================
# 012 INTEGRATION OVERVIEW
# ============================================================

status: canonical
layer: operations
domain: integration
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines the operational overview of the integration domain.

summary:
The integration operations layer governs contract activation,
projection review, authority review,
sync control, proposal-path handling,
rejection handling, incident containment,
and audit-safe trace preservation.

operations_intent:
Integration crosses boundaries and therefore carries risk.
Operations exists so that contract changes,
authority-sensitive transfers,
and overwrite attempts are reviewed,
contained, and preserved for audit.

scope:
- contract activation and suspension
- projection review
- authority review
- sync and proposal-path control
- rejection and incident containment
- historical contract audit
- trace preservation

operations_rules:
- Authority-sensitive contract changes must be explicit and auditable.
- Proposal-path and canonical-write path must remain operationally distinct.
- Overwrite attempts without authority must be contained and preserved.
- Historical contract records must remain inspectable.
