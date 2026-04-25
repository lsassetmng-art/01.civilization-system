# ============================================================
# PERSONA BUILDER IMPLEMENTATION OVERVIEW
# ============================================================

status: canonical
layer: implementation
domain: builder
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines the overview of builder implementation guidance.

summary:
Builder implementation defines controller separation,
draft persistence handling,
validation handling,
and safe handoff into truth-apply paths.

scope:
draft controller
validation handler
approval-preparation handling
safe truth handoff

boundary:
Implementation must preserve draft/truth separation.
