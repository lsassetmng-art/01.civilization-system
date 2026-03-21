# ============================================================
# ACCESS CONTROL RULE
# ============================================================

status: canonical
scope: security
component: access-control-rule

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define canonical access control expectations
across the Civilization System.


# ============================================================
# RESPONSIBILITY
# ============================================================

This file defines:

- explicit access boundaries
- scope-aware authorization
- least-authority expectations
- revocation and invalidation awareness


# ============================================================
# CORE PRINCIPLE
# ============================================================

Access must be explicit.

No actor, system, or module
should gain authority through ambiguity,
convenience, or inherited assumption alone.


# ============================================================
# SCOPE RULE
# ============================================================

Access must be scoped.

Typical scope dimensions may include:

- system
- OS
- workspace
- module
- release unit
- license scope
- access grant scope

Authority without explicit scope is structurally unsafe.


# ============================================================
# LEAST-AUTHORITY RULE
# ============================================================

A system should grant only
the minimum authority required
for the intended action.

Broader-than-needed access is discouraged.


# ============================================================
# REVOCATION RULE
# ============================================================

Revoked, expired, or invalidated access
must not remain silently usable.

Dependent use paths should be disabled
when authoritative access state becomes invalid.


# ============================================================
# CROSS-SYSTEM RULE
# ============================================================

When access state is mirrored across systems:

- the source-of-truth remains explicit
- mirrored access must not become false authority
- invalid mirrored state must not override authoritative revocation


# ============================================================
# FINAL RULE
# ============================================================

Access must be explicit, scoped, minimal, and revocable.

Authority through ambiguity is prohibited.
