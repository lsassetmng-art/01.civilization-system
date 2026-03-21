# ============================================================
# EVENT SECURITY RULE
# ============================================================

status: canonical
scope: event
component: event-security-rule

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define canonical security expectations
for event production and consumption
across the Civilization System.


# ============================================================
# RESPONSIBILITY
# ============================================================

This file defines:

- trust expectations for event payloads
- validation expectations
- source verification expectations
- unsafe event rejection principles


# ============================================================
# CORE PRINCIPLE
# ============================================================

An event payload must not be trusted
only because it arrived.

Validity, origin, and structural correctness
must be established before authoritative use.


# ============================================================
# VALIDATION RULE
# ============================================================

Consumers must validate:

- event type
- schema shape
- expected source when relevant
- aggregate identity form when relevant
- required field presence

Malformed payloads must not mutate canonical truth.


# ============================================================
# SOURCE RULE
# ============================================================

When source authority matters,
event origin must be attributable.

Mirrored or downstream systems
must not be treated as authoritative producers
unless explicitly defined.


# ============================================================
# REJECTION RULE
# ============================================================

Unsafe or unverifiable events
should be rejected or quarantined.

Prefer fail-closed behavior over silent acceptance
when trust cannot be established.


# ============================================================
# LEAST-TRUST RULE
# ============================================================

A consumer should trust
only the minimum required information
needed to process the event correctly.

Undocumented fields must not gain silent authority.


# ============================================================
# FINAL RULE
# ============================================================

Canonical event handling requires validation,
source awareness, and fail-closed rejection
of unsafe payloads.
