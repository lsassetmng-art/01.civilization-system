# ============================================================
# 006 PLAYER OVERVIEW
# ============================================================

status: canonical
layer: operations
domain: player
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines the operational overview of the player domain.

summary:
The player operations layer governs player activation,
suspension, limitation, archival,
identity review, role correction,
progress control, boundary control,
and audit-safe historical preservation.

operations_intent:
Player participation must be safe and deliberate.
Operations exists so that changes to player lifecycle,
role, progress, and control boundary remain explicit,
reviewable, and historically preserved.

scope:
- player activation and suspension
- identity review
- role assignment and correction
- progress-stage control
- boundary control
- archival and historical review
- incident containment

operations_rules:
- Live participation changes must be explicit and auditable.
- Suspension, limitation, and archival must preserve trace.
- Role and boundary corrections must not erase prior state history.
- Historical-only state must remain separated from live participation.
