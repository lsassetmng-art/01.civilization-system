# ============================================================
# BUSINESS AI WORKER FOUNDATION WEB IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines implementation responsibilities of the BusinessOS foundation web.

implementation_responsibilities:
- own worker control tower logic
- own lending truth
- own reservation truth
- own subscription and capacity truth
- own disclaimer and consent truth
- expose official interfaces to consumer apps

rule:
Consumer apps must integrate through foundation web interfaces,
not duplicate core control logic.
