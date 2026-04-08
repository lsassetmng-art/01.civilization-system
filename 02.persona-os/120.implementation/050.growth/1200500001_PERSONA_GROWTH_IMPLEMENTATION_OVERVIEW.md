# ============================================================
# PERSONA GROWTH IMPLEMENTATION OVERVIEW
# ============================================================

status: canonical
layer: implementation
domain: growth
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines the overview of growth implementation guidance.

summary:
Growth implementation defines handlers,
adapters,
and audit-safe apply paths
for growth-related mutation.

scope:
request handler
deduplication support
apply handler
result emission handler

boundary:
Implementation realizes growth behavior,
but must preserve PersonaOS truth authority.
