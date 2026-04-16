# ============================================================
# LOCAL-FIRST INFRASTRUCTURE
# ============================================================

status: canonical
layer: infrastructure
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines local-first infrastructure assumptions.

requirements:
- drafts must remain locally storable
- partial work must survive app interruption where practical
- local state must be recoverable after transient connectivity loss
- local draft continuity must not depend on constant network access
