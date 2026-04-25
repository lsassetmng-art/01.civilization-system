# ============================================================
# PERSONA RELATION STATE RUNTIME
# ============================================================

status: canonical
layer: runtime
domain: business-worker-link
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines runtime for familiarity and relation-state update.

rules:
- updates are effect-based, not direct overwrite
- duplicate events must be idempotently handled
