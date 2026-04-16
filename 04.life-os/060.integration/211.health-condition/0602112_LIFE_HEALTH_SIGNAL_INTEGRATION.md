# ============================================================
# LIFE HEALTH SIGNAL INTEGRATION
# ============================================================

status: canonical-draft
system: life-os
layer: integration
domain: health-condition
owner: Boss
prepared_by: Zero

purpose:
Defines integration boundaries for health-condition signals.

integrations:
- daily review
- assistant orchestration
- alert generation

rules:
- no diagnosis claims across integrations
- sensitive scope must be preserved
