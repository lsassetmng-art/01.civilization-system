# ============================================================
# PLAYER STATE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
Player state is the authoritative snapshot of the player's current condition.

state_dimensions:
- life_stage
- legal_status
- health_status
- education_status
- employment_status
- family_status
- economic_status

rules:
- state is read-only outside event processing
- state transitions must be explicit
- derived state must be reproducible from source events

constitution_alignment:
- no hidden mutation
- event-driven transition

final_rule:
Player state exists only as the auditable result of prior events.
