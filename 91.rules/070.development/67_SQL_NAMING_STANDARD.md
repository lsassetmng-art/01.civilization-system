# ============================================================
# SQL NAMING STANDARD
# ============================================================

status: canonical
scope: development
component: sql-naming-standard

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define canonical naming rules
for SQL-facing objects
across the Civilization System.


# ============================================================
# RESPONSIBILITY
# ============================================================

This file defines:

- table naming
- column naming
- SQL function naming
- RPC naming
- readability and stability expectations


# ============================================================
# CORE PRINCIPLE
# ============================================================

SQL names must be:

- explicit
- structurally meaningful
- stable after publication
- easy to read in operations and debugging

Avoid decorative or ambiguous naming.


# ============================================================
# TABLE RULE
# ============================================================

Tables must use:

snake_case

Examples:

persona_state
event_outbox
apply_run_log
growth_events
persona_access_grant
business_workspace_member


# ============================================================
# COLUMN RULE
# ============================================================

Columns must use:

snake_case

Examples:

event_id
schema_hash
dispatch_attempts
created_at
updated_at
grant_state
retry_count


# ============================================================
# FUNCTION RULE
# ============================================================

SQL functions should use:

verb_object

Examples:

claim_event_batch
mark_event_done
mark_retry
apply_event_engine
refresh_access_state


# ============================================================
# RPC RULE
# ============================================================

RPC-facing names should use:

schema.function

Examples:

personaos.apply_event
business.claim_event_batch
civilization.sync_consume_event

Schema and function meaning must remain explicit.


# ============================================================
# NAMING STABILITY RULE
# ============================================================

Published SQL names should remain stable.

Rename only when:

- the old name became structurally misleading
- domain meaning changed
- the boundary or role changed significantly


# ============================================================
# AVOIDANCE RULE
# ============================================================

Avoid:

- vague abbreviations
- UI-oriented wording
- temporary names
- overloaded generic names
- names whose meaning depends on hidden context


# ============================================================
# FINAL RULE
# ============================================================

SQL-facing names must be explicit,
snake_case where applicable,
and stable enough for operational use,
debugging, and long-term maintenance.
