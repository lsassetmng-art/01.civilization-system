# ============================================================
# EVENT IDEMPOTENCY RULE
# ============================================================

status: canonical
scope: event
component: event-idempotency-rule

owner: Boss
prepared_by: Zero


# PURPOSE

Define idempotent handling for repeated events.


# RULES

Duplicate event execution must be safe.
Idempotency decision must be auditable.
Unsafe replay is prohibited.


# FINAL RULE

Event retry must never corrupt state.

