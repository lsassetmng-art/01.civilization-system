# ============================================================
# POCKET SECRETARY TO PERSONA VISUAL RUNTIME INTEGRATION
# ============================================================

status: canonical
layer: integration
domain: visual-runtime-host
owner: Boss
prepared_by: Zero

# ============================================================
# 1. INTEGRATION PURPOSE
# ============================================================

This document defines the integration boundary
between PocketSecretary and Persona Visual Runtime.


# ============================================================
# 2. INPUTS TO RUNTIME
# ============================================================

PocketSecretary sends:

surface_code
manifest_projection
initial_state_hint
optional_background_override
container_binding_request


# ============================================================
# 3. OUTPUTS FROM RUNTIME
# ============================================================

PocketSecretary receives:

session_id
runtime_event_stream
render completion
fallback events
runtime errors


# ============================================================
# 4. INTEGRATION RULE
# ============================================================

PocketSecretary may shape UX around the runtime,
but must not alter canonical runtime semantics.
