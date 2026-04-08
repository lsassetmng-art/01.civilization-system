# ============================================================
# PERSONA RUNTIME HOSTING INTERFACE OVERVIEW
# ============================================================

status: canonical
layer: interface
domain: runtime-hosting
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines the overview of runtime-hosting interfaces.

summary:
Runtime-hosting interfaces define explicit session create,
attach, dispose, and event-observation contracts.

scope:
session create request
attach request
dispose request
session event stream

boundary:
These interfaces govern runtime consumption,
not truth ownership.
