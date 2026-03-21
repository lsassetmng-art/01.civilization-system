# ============================================================
# EVENT SCHEMA RULE
# ============================================================

status: canonical
scope: event
component: event-schema-rule

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define canonical schema expectations
for event payloads across the Civilization System.


# ============================================================
# RESPONSIBILITY
# ============================================================

This file defines:

- required schema clarity
- payload structure expectations
- contract consistency requirements
- schema stability expectations


# ============================================================
# CORE PRINCIPLE
# ============================================================

Every canonical event must have
an explicit schema shape.

The consumer must be able to determine:

- event type
- aggregate identity
- payload structure
- source system
- processing meaning


# ============================================================
# MINIMUM SCHEMA RULE
# ============================================================

A canonical event payload should clearly support:

- event_type
- aggregate_type
- aggregate_id
- payload body
- source or producer identity when relevant

Additional fields may exist,
but structural identification must remain explicit.


# ============================================================
# FIELD MEANING RULE
# ============================================================

Each field must have stable meaning.

A field must not silently change purpose
while keeping the same name.


# ============================================================
# OPTIONAL FIELD RULE
# ============================================================

Optional fields are allowed
when they do not alter the meaning
of existing required fields.

Optional fields must not silently become mandatory
without version-aware handling.


# ============================================================
# VALIDATION RULE
# ============================================================

Event payloads must be validatable.

Malformed or unverifiable payloads
must not be accepted as authoritative input.


# ============================================================
# FINAL RULE
# ============================================================

Canonical events must have
explicit, stable, and validatable schema structure.

Consumers must not rely on undocumented payload assumptions.
