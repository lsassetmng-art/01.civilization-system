# ============================================================
# PERSONA EVENT PIPELINE ARCHITECTURE
# ============================================================

PersonaOS uses an event-driven pipeline.

CivilizationOS generates events.

PersonaOS consumes events.

Event pipeline:

Civilization Dispatcher
↓
sign-event
↓
persona-state-apply
↓
growth_events
↓
snapshot trigger

# RULES

Events must be:

traceable
signed
idempotent
schema-versioned

Silent mutation is forbidden.

