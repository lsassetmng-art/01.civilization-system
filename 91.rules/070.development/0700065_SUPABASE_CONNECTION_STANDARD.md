# ============================================================
# SUPABASE CONNECTION STANDARD
# ============================================================

status: canonical
scope: development
component: supabase-connection-standard

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the canonical Supabase connection standard
for the Civilization System workflow.


# ============================================================
# RESPONSIBILITY
# ============================================================

This file defines:

- approved Supabase connection mode
- prohibited connection mode
- structural expectations for connection routing


# ============================================================
# CORE PRINCIPLE
# ============================================================

Supabase connection handling must prefer
stable, operationally safe connection routing
over ad hoc direct database access.


# ============================================================
# APPROVED CONNECTION RULE
# ============================================================

The canonical connection method is:

Transaction Pooler

Example pattern:

aws-1-ap-south-1.pooler.supabase.com:6543


# ============================================================
# PROHIBITED CONNECTION RULE
# ============================================================

Direct database connection usage
is prohibited as canonical operational standard
when the approved pooler route exists.


# ============================================================
# STRUCTURAL RULE
# ============================================================

Connection routing must remain consistent
with the approved environment-variable-based workflow.

Connection mode must not silently vary
between scripts without explicit reason.


# ============================================================
# FINAL RULE
# ============================================================

Canonical Supabase connection handling
must use the approved Transaction Pooler route.

Direct database connection is not the standard
for active operational workflow.
