# ============================================================
# PERSONA VISUAL RUNTIME PUBLIC INTERFACE
# ============================================================

status: canonical
layer: interface
domain: visual-runtime
owner: Boss
prepared_by: Zero

# ============================================================
# 1. INTERFACE PURPOSE
# ============================================================

This document defines the host-facing
interface contract of Visual Runtime.


# ============================================================
# 2. INTERFACE INPUTS
# ============================================================

RuntimeInitializeRequest
- runtime_version
- host_platform
- capability_profile

RuntimeCreateSessionRequest
- surface_code
- surface_profile_version
- manifest_projection
- initial_state
- initial_expression
- initial_animation_mode
- background_override
- host_options

RuntimeAttachContainerRequest
- session_id
- container_handle
- render_mode


# ============================================================
# 3. INTERFACE OUTPUTS
# ============================================================

RuntimeCreateSessionResponse
- session_id
- lifecycle_state
- accepted_surface_code

RuntimeEvent
- event_code
- session_id
- severity
- payload
- occurred_at

RuntimeError
- error_code
- session_id
- severity
- recoverable
- payload


# ============================================================
# 4. EVENT CODES
# ============================================================

SESSION_CREATED
CONTAINER_ATTACHED
MANIFEST_LOADED
BACKGROUND_RESOLVED
BACKGROUND_FALLBACK_APPLIED
RENDER_STARTED
RENDER_COMPLETED
RECOVERABLE_ERROR
TERMINAL_ERROR
SESSION_DISPOSED


# ============================================================
# 5. INTERFACE RULES
# ============================================================

1. All inputs must be explicit.
2. All outputs must be observable.
3. Error objects must distinguish recoverable and terminal failures.
4. Event codes must remain stable across hosts.

# EXACT READY INTERFACE REINFORCEMENT

status_extension: author-reviewed-with-interface-reinforcement
reinforced_at: 20260417_152041
domain: visual

minimum_interface_requirements:
- define request or input shape
- define response or output shape
- define required identifiers
- define status or result family
- define error family where applicable

mandatory_interface_controls:
- no ambiguous field meaning
- no missing identifier in terminal result
- no undocumented reject family

minimum_interface_acceptance_targets:
- valid input and output example
- reject or error example
- result code example where applicable
