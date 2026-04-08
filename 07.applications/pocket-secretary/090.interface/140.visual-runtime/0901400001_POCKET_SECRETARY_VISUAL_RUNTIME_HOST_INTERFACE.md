# ============================================================
# POCKET SECRETARY VISUAL RUNTIME HOST INTERFACE
# ============================================================

status: canonical
layer: interface
domain: visual-runtime-host
owner: Boss
prepared_by: Zero

# ============================================================
# 1. HOST REQUESTS
# ============================================================

PocketSecretaryRuntimeCreateRequest
- surface_code
- manifest_projection
- initial_state_hint
- initial_expression_hint
- initial_animation_mode
- background_override

PocketSecretaryRuntimeAttachRequest
- session_id
- container_handle


# ============================================================
# 2. HOST EVENTS
# ============================================================

SESSION_CREATED
MANIFEST_ACCEPTED
BACKGROUND_RESOLVED
BACKGROUND_FALLBACK_APPLIED
RENDER_COMPLETED
RECOVERABLE_ERROR
TERMINAL_ERROR
SESSION_DISPOSED
