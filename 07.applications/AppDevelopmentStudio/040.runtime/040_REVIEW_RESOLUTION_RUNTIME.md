# ============================================================
# REVIEW RESOLUTION RUNTIME
# ============================================================

status: canonical-draft
layer: runtime
application: App Development Studio

purpose:
Defines effective review behavior after policy and escalation are applied.

inputs:
- selected review mode
- artifact type
- safety escalation rule
- environment class
- risk level

outputs:
- effective review requirement
