# ============================================================
# DATABASE CONNECTION STANDARD
# ============================================================

status: canonical
scope: development
component: database-connection-standard

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the canonical database connection standard
used in the Civilization System development workflow.


# ============================================================
# RESPONSIBILITY
# ============================================================

This file defines:

- approved database connection methods
- environment variable usage
- prohibited connection styles
- scope separation between database groups


# ============================================================
# CORE PRINCIPLE
# ============================================================

Database connection must be explicit,
environment-driven, and reproducible.

Manual ad hoc credential assembly is prohibited.


# ============================================================
# DATABASE GROUP RULE
# ============================================================

Two database groups exist.

## ERP-side database group
Environment variable:

DATABASE_URL

Typical scope:

- ERP
- Business
- Audit
- Analytics
- Governance

## Persona/Civilization-side database group
Environment variable:

PERSONA_DATABASE_URL

Typical scope:

- PersonaOS
- CivilizationOS
- Life
- Streaming
- Game
- Social
- Learning


# ============================================================
# ENVIRONMENT VARIABLE RULE
# ============================================================

Only environment URL variables are allowed
for canonical database connection handling.

Approved examples:

- DATABASE_URL
- PERSONA_DATABASE_URL

Direct host/user/password assembly
inside scripts is prohibited.


# ============================================================
# FORBIDDEN RULE
# ============================================================

The following are prohibited
as canonical connection style:

- PGHOST-based manual connection composition
- PGUSER-based manual connection composition
- ad hoc direct credential embedding in scripts
- undocumented manual connection configuration


# ============================================================
# STRUCTURAL RULE
# ============================================================

Database connection selection must reflect
the structural ownership of the target system.

A script must not silently connect
to the wrong database group.


# ============================================================
# FINAL RULE
# ============================================================

Canonical database connections must use
approved environment URL variables only.

Connection handling must be explicit,
stable, and environment-driven.
