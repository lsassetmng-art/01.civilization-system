# ============================================================
# PERSONA VISUAL RUNTIME SESSION MODEL
# ============================================================

status: canonical
layer: model
domain: visual-runtime
owner: Boss
prepared_by: Zero

model_name: persona_visual_runtime_session

# ============================================================
# 1. PURPOSE
# ============================================================

persona_visual_runtime_session defines
the canonical runtime session state
used during host embedding and rendering.


# ============================================================
# 2. CORE FIELDS
# ============================================================

session_id
surface_code
surface_class
manifest_projection_ref
background_resolution_state
visual_state
expression_code
animation_mode
lifecycle_state
container_binding_state
last_render_at
last_error_code
fallback_count
created_at
updated_at


# ============================================================
# 3. LIFECYCLE STATES
# ============================================================

created
initialized
container_bound
manifest_loaded
ready
rendering
paused
disposed
error


# ============================================================
# 4. MODEL RULES
# ============================================================

1. Session state is runtime-execution state only.
2. Session must not persist persona truth.
3. Session may be rebuilt from canonical input contracts.
4. Session identity is host-lifecycle scoped.
