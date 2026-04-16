# ============================================================
# BUSINESS AI WORKER CONSUMER APP ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines the responsibility of consumer applications.

consumer_apps:
- advisory apps
- execution work apps
- embedded business app surfaces

consumer_app_responsibilities:
- specialized UX
- conversation experience
- work-order experience
- progress display
- output handoff
- review and approval handoff

rule:
Consumer apps request and consume governed AI worker capacity
from BusinessOS foundation web.
