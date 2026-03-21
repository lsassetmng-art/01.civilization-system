# ============================================================
# EVENT INTERFACE
# ============================================================

Defines the public event interface.

Events are the primary integration
mechanism of CivilizationOS.

Rules:

events are immutable
events are versioned
events are append-only

External systems subscribe
through the event pipeline.

Events must not expose
internal system state.
