# ============================================================
# POCKET SECRETARY PERSONA RENDER RESULT INTERFACE
# ============================================================

status: canonical
layer: 090.interface
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines how PocketSecretary presents Persona render results
received through the shared VisualRuntime boundary.

required UI states:
- render ready
- render loading
- render fallback
- render failed

rules:
- fallback state must be visually distinguishable where applicable
- render state must not imply authority or approval state
- UI continuity should be preserved safely during render degradation
