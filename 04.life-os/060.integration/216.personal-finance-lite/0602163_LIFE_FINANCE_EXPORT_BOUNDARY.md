# ============================================================
# LIFE FINANCE EXPORT BOUNDARY
# ============================================================

status: canonical-draft
system: life-os
layer: integration
domain: personal-finance-lite
owner: Boss
prepared_by: Zero

purpose:
Defines export boundaries for personal-finance-lite data.

rules:
- private expense data is not exported by default
- any export must obey visibility and privacy policy
