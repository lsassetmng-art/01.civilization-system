# ============================================================
# 006 PLAYER OVERVIEW
# ============================================================

status: canonical
layer: security
domain: player
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines the security overview of the player domain.

summary:
The player security layer defines authorization,
masking, blocking, and audit requirements
for player identity, role, progress,
boundary, and lifecycle state.

security_intent:
Player data combines participation truth,
identity binding, role capability,
progress status, and control boundaries.
Security exists to prevent unauthorized disclosure,
unauthorized mutation, and live/history confusion.

scope:
- player read authorization
- player mutation authorization
- restricted role and boundary masking
- identity-binding protection
- historical and audit access control
- trace and incident evidence preservation

security_rules:
- Active player data must be disclosed only to authorized consumers.
- Restricted role, progress, or boundary data must be masked or blocked.
- Lifecycle-changing actions require explicit authority.
- Historical-only data must not be treated as current live state.
- Security decisions must fail closed.
