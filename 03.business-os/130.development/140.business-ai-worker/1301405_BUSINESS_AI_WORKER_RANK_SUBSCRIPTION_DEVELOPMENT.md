# ============================================================
# BUSINESS AI WORKER RANK SUBSCRIPTION DEVELOPMENT
# ============================================================

status: canonical
layer: development
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines rank and subscription development tasks.

rank_tiers:
- Entry
- Standard
- High
- Extra

pricing_jpy:
- Entry: 1000
- Standard: 2000
- High: 3000
- Extra: 5000

tasks:
- rank metadata setup
- subscription state handling
- capacity derivation from subscription
- upgrade and downgrade handling
