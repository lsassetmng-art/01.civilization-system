# ============================================================
# BUSINESS AI WORKER RANK POLICY
# ============================================================

status: canonical
layer: policy
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines rank policy.

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

rules:
- higher rank may receive stronger priority and broader support ability
- rank does not replace specialty
- rank does not remove policy requirements for approval or disclaimer
