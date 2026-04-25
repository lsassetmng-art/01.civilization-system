# ============================================================
# BUSINESS EFFECT TO TRUST FLOW
# ============================================================

status: canonical
layer: flow
domain: business-worker-link
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines flow from business-origin effect to trust-state update.

flow:
1. business-origin effect is received
2. PersonaOS validates effect legitimacy
3. trust or relation state is recalculated
4. canonical state is updated
5. apply audit is written
