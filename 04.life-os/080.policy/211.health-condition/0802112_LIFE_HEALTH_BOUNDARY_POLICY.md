# ============================================================
# LIFE HEALTH BOUNDARY POLICY
# ============================================================

status: canonical-draft
system: life-os
layer: policy
domain: health-condition
owner: Boss
prepared_by: Zero

purpose:
Defines the boundary policy for condition, symptom, medication, recovery,
and visit records inside LifeOS.

policy:
- LifeOS may record health-related life facts
- LifeOS may summarize self-observed states
- LifeOS must not claim medical diagnosis
- LifeOS must not overstate certainty
- LifeOS must treat health-condition data as sensitive by default
- LifeOS must minimize outward exposure of health detail
- reminder text must remain safe and non-diagnostic
- escalation must follow explicit alert policy only
