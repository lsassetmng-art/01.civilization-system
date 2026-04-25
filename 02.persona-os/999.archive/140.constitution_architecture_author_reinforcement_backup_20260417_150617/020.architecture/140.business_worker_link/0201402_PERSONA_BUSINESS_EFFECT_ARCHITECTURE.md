# ============================================================
# PERSONA BUSINESS EFFECT ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: business-worker-link
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines how business-origin work affects persona-side internal state.

rules:
- BusinessOS may emit business-origin effect events
- PersonaOS validates and applies internal-state change
- PersonaOS remains canonical owner of resulting trust-related state
