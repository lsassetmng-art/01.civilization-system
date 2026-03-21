# ============================================================
# EVENT VERSIONING RULE
# ============================================================

status: canonical
scope: event
component: event-versioning-rule

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define canonical versioning rules
for event contracts across the Civilization System.


# ============================================================
# RESPONSIBILITY
# ============================================================

This file defines:

- when an event contract should be versioned
- what counts as breaking change
- how stability should be preserved for consumers
- how event evolution should be managed


# ============================================================
# CORE PRINCIPLE
# ============================================================

Event versioning exists to preserve
contract stability across producers and consumers.

Changes that alter interpretation,
required fields, or contract meaning
must not be treated as trivial edits.


# ============================================================
# BREAKING CHANGE RULE
# ============================================================

A breaking event change includes:

- removing a required field
- changing field meaning
- changing identifier semantics
- changing source-of-truth interpretation
- changing contract shape in a way
  that invalidates existing consumers


# ============================================================
# NON-BREAKING CHANGE RULE
# ============================================================

A non-breaking event change may include:

- adding optional fields
- clarifying documentation
- tightening validation explanation
- adding derived metadata
  without changing existing required meaning


# ============================================================
# CONSUMER RULE
# ============================================================

Event producers must consider
existing consumers before changing contracts.

Event consumers must not assume
undocumented payload meaning.


# ============================================================
# MIGRATION RULE
# ============================================================

When event versioning changes,
the following should be explicit:

- what changed
- why it changed
- which consumers are affected
- whether dual-read or transition support is needed


# ============================================================
# FINAL RULE
# ============================================================

Event contracts must evolve deliberately.

Breaking changes require explicit migration awareness.
Non-breaking changes must preserve existing contract meaning.
