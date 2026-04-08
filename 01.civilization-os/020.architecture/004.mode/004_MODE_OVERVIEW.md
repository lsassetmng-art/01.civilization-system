# ============================================================
# 004 MODE OVERVIEW
# ============================================================

status: canonical
layer: architecture
domain: mode
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines the architecture overview of the mode domain.

summary:
The mode domain defines how CivilizationOS interprets
system context, access context, operational context,
and transition context without changing canonical world truth.

design_intent:
Mode is not a visual theme and not a temporary UI flag.
Mode is canonical context selection.
It exists so the system can determine
what kind of behavior, visibility, control surface,
and transition rules apply to the same canonical world.

scope:
- world-facing mode
- access-facing mode
- operation-facing mode
- transition-facing mode
- mode conflict handling

non_scope:
- core world identity ownership
- direct UI layout ownership
- ad hoc local component state
- runtime-only undocumented toggles

canonical_rules:
- Mode must be explicit, typed, and queryable.
- Mode must not redefine canonical world truth.
- Mode must not be hidden in UI-only code.
- Mode must support conflict detection.
- Mode must support transition rules.

required_behavior:
- The architecture must define canonical mode classes.
- The architecture must define mode selection boundaries.
- The architecture must define transition and conflict rules.
- The architecture must define actor and consumer implications.
