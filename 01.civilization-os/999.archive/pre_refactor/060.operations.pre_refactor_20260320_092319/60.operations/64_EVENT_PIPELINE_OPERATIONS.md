# ============================================================
# EVENT PIPELINE OPERATIONS
# ============================================================

status: canonical
scope: civilization.events


# PURPOSE

Define event lifecycle operations.


# EVENT TYPES

System Events
AI Events
Civilization Events


# EVENT FLOW

Event Creation
↓
Event Storage
↓
Event Processing
↓
Event Logging


# EVENT GUARANTEES

Idempotent processing
Ordered event handling


# FAILURE HANDLING

Failed events moved to recovery queue.

