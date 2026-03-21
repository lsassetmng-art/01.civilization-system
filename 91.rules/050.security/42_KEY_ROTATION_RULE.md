# ============================================================
# KEY ROTATION RULE
# ============================================================

status: canonical
scope: security
component: key-rotation-rule

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define canonical key rotation expectations
for managed signing or verification keys
across the Civilization System.


# ============================================================
# RESPONSIBILITY
# ============================================================

This file defines:

- why key rotation is necessary
- what must remain stable during rotation
- what migration awareness is required
- how trust continuity should be preserved


# ============================================================
# CORE PRINCIPLE
# ============================================================

Key rotation must preserve trust continuity
without silently invalidating active systems.


# ============================================================
# ROTATION RULE
# ============================================================

Key rotation is allowed and expected
when required for security health.

Rotation must be explicit and controlled.

Implicit or undocumented key replacement is prohibited.


# ============================================================
# CONTINUITY RULE
# ============================================================

During rotation, the system should make clear:

- which key is current
- which prior key remains temporarily acceptable
- how verification behavior is affected
- when old trust paths expire


# ============================================================
# MIGRATION RULE
# ============================================================

Key rotation must consider:

- active signed artifacts
- verification consumers
- transition windows
- audit traceability

Rotation must not silently break verification behavior.


# ============================================================
# FINAL RULE
# ============================================================

Key rotation must be explicit,
traceable, and continuity-aware.

Security improvement must not create silent trust collapse.
