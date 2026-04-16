# ============================================================
# LIFE ALERT RUNTIME
# ============================================================

status: canonical-draft
system: life-os
layer: runtime
domain: risk-and-alert
owner: Boss
prepared_by: Zero

purpose:
Defines runtime handling for alert creation and surfacing.

runtime responsibilities:
- load risk signals
- compare against thresholds
- create alert records
- hand off to alert notification integration
