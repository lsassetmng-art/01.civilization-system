# ============================================================
# POCKET SECRETARY VISUAL RUNTIME HOST ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: visual-runtime-host
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document defines how PocketSecretary
hosts Persona Visual Runtime.


# ============================================================
# 2. HOST STRUCTURE
# ============================================================

PocketSecretary host structure is:

Screen
-> Host Visual Controller
-> Runtime Host Adapter
-> Visual Runtime Session
-> Render Surface Container

Screen owns screen UX.
Host Visual Controller owns host-side visual decisions.
Runtime Host Adapter translates host calls into canonical runtime calls.
Visual Runtime Session performs canonical rendering.
Render Surface Container is the platform drawing target.


# ============================================================
# 3. HOST INPUTS
# ============================================================

PocketSecretary must prepare:

surface_code
manifest_projection
container_handle
host_lifecycle_binding
optional_background_override
optional_initial_visual_state


# ============================================================
# 4. HOST OUTPUT EXPECTATION
# ============================================================

PocketSecretary must be ready to receive:

session_created
manifest_loaded
background_resolved
background_fallback_applied
render_completed
recoverable_error
terminal_error
session_disposed


# ============================================================
# 5. MAIN RULE
# ============================================================

PocketSecretary must treat Visual Runtime
as the rendering authority
and itself as the hosting authority.
