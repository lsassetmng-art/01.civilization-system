# ============================================================
# EVENT NAMING STANDARD
# ============================================================

status: canonical
scope: event
component: event-naming-standard

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define canonical naming rules
for event identifiers across the Civilization System.


# ============================================================
# RESPONSIBILITY
# ============================================================

This file defines:

- how event types should be named
- how event names should remain readable
- how event names should remain stable
- how event names should represent structural meaning


# ============================================================
# CORE PRINCIPLE
# ============================================================

An event name must reveal
what happened in a structurally meaningful way.

An event name should not be vague,
UI-oriented, or temporary wording.


# ============================================================
# EVENT TYPE RULE
# ============================================================

Canonical event types should use:

UPPERCASE_WITH_UNDERSCORES

Examples:

PERSONA_RELEASE_ISSUED
PERSONA_LICENSE_CHANGED
PERSONA_ACCESS_GRANT_CHANGED
CIVILIZATION_SYNC_EVENT_RECEIVED
BUSINESS_PERSONA_BINDING_CREATED


# ============================================================
# WORDING RULE
# ============================================================

Event names should:

- use domain-accurate nouns and actions
- avoid filler words
- avoid unstable temporary wording
- remain readable without external explanation

Use past-result or state-change wording
when possible.


# ============================================================
# EVENT MEANING RULE
# ============================================================

An event name should represent
a meaningful domain occurrence.

Good examples:

- PERSONA_RELEASE_REVOKED
- PERSONA_LICENSE_CHANGED
- BUSINESS_SYNC_EVENT_CONSUMED

Poor examples:

- PERSONA_DO_SOMETHING
- DATA_UPDATED_OK
- TEMP_SYNC_EVENT


# ============================================================
# STABILITY RULE
# ============================================================

Published canonical event names
should remain stable.

Rename only when:

- the event meaning changed
- the old name became structurally incorrect
- the event boundary was redefined


# ============================================================
# FINAL RULE
# ============================================================

Canonical event identifiers must use:

UPPERCASE_WITH_UNDERSCORES

An event name must reveal
what structurally happened,
not temporary implementation wording.
