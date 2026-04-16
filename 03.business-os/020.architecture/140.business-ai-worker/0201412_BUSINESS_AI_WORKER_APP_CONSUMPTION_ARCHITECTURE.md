# ============================================================
# BUSINESS AI WORKER APP CONSUMPTION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines how applications consume Business AI Worker.

app_rule:
Applications are consumers of worker availability,
capability, and routing.
Applications must not own employment truth,
rank truth, slot truth, or reservation truth.
