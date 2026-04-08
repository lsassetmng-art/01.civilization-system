# ============================================================
# PERSONA BUILDER RUNTIME OVERVIEW
# ============================================================

status: canonical
layer: runtime
domain: builder
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines the runtime overview of builder behavior.

summary:
Builder runtime manages draft lifecycle,
section editing behavior,
validation execution,
and approved handoff toward canonical truth paths.

scope:
draft create/update
validation execution
approval-preparation handling
publish-preparation handling

boundary:
Builder runtime does not directly become final truth runtime.
Builder runtime does not bypass growth, memory, or rights policy.
