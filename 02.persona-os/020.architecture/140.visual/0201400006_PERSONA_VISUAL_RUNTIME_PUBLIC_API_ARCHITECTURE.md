# ============================================================
# PERSONA VISUAL RUNTIME PUBLIC API ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: visual-runtime
owner: Boss
prepared_by: Zero

# ============================================================
# 1. OBJECTIVE
# ============================================================

This document defines the canonical public API architecture
exposed by Persona Visual Runtime to host applications.

The goal is to make host integration predictable,
portable, and app-independent.


# ============================================================
# 2. PUBLIC API LAYERS
# ============================================================

The public API is split into five layers:

1. Bootstrap API
2. Session API
3. State API
4. Background API
5. Event API


# ============================================================
# 3. BOOTSTRAP API
# ============================================================

Bootstrap API responsibilities:

initialize runtime
declare host platform capabilities
bind target surface contract
construct runtime session

Canonical bootstrap operations:

initialize(config)
createSession(surfaceProfile, manifestPayload, options)
attachContainer(sessionId, containerHandle)
disposeSession(sessionId)


# ============================================================
# 4. SESSION API
# ============================================================

Session API responsibilities:

hold runtime execution state
track loaded manifest projection
track surface binding
track current render tree
control runtime lifecycle

Canonical session operations:

loadManifest(sessionId, manifestPayload)
reloadManifest(sessionId, manifestPayload)
pause(sessionId)
resume(sessionId)
disposeSession(sessionId)


# ============================================================
# 5. STATE API
# ============================================================

State API responsibilities:

change runtime visual state
apply expression state
apply posture / animation state
apply visibility mode

Canonical state operations:

setVisualState(sessionId, visualState)
setExpression(sessionId, expressionCode)
setAnimationMode(sessionId, animationMode)
setSurfaceMode(sessionId, surfaceMode)


# ============================================================
# 6. BACKGROUND API
# ============================================================

Background API responsibilities:

apply explicit background request
clear explicit background override
refresh background from resolution pipeline

Canonical background operations:

setBackground(sessionId, backgroundRequest)
clearBackgroundOverride(sessionId)
refreshBackground(sessionId)


# ============================================================
# 7. EVENT API
# ============================================================

Event API responsibilities:

emit lifecycle events
emit loading state changes
emit fallback events
emit render completion
emit recoverable and terminal errors

Canonical event groups:

session.created
session.disposed
manifest.loaded
surface.bound
render.started
render.completed
fallback.applied
asset.missing
background.changed
error.recoverable
error.terminal


# ============================================================
# 8. DESIGN RULES
# ============================================================

1. Host applications must integrate only through public API.
2. Public API must not expose internal composition graph mutation.
3. Public API must be stable across host applications.
4. Public API must be documented without host-specific assumptions.
5. All API inputs must be contract-based, not ad hoc maps.
6. Session disposal must be explicit and deterministic.


# ============================================================
# 9. HOST VIEW
# ============================================================

From the host perspective,
Visual Runtime is a black-box shared renderer
with a stable contract and observable events.

The host should know:

what to pass in
what events may come out
what fallback behavior to expect
what lifecycle it must manage

The host should not need internal composition knowledge
to use the runtime correctly.
