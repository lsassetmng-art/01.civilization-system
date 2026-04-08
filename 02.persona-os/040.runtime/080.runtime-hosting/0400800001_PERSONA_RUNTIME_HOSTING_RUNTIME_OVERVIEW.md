# ============================================================
# PERSONA RUNTIME HOSTING RUNTIME OVERVIEW
# ============================================================

status: canonical
layer: runtime
domain: runtime-hosting
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines the runtime overview of host/session behavior.

summary:
Runtime-hosting runtime governs session creation,
session binding,
surface attachment,
host-consumption lifecycle,
and explicit disposal.

scope:
session create
container attach
surface-bound execution
pause/resume semantics
session disposal

boundary:
Host applications consume runtime sessions,
but are not truth owners.
