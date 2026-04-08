# ============================================================
# PERSONA RUNTIME HOSTING OPERATION OVERVIEW
# ============================================================

status: canonical
layer: operations
domain: runtime-hosting
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines the overview of runtime-hosting operations.

summary:
Runtime-hosting operations govern session lifecycle observability,
attach/detach behavior,
session leak detection,
and cleanup visibility.

scope:
session create/dispose monitoring
attach/detach monitoring
stale session detection
cleanup completeness

boundary:
Operations support safe host/runtime usage,
but do not redefine host contracts.
