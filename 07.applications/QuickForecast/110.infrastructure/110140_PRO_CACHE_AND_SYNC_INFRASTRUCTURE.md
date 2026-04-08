# ============================================================
# PRO CACHE AND SYNC INFRASTRUCTURE
# ============================================================

status: canonical
layer: infrastructure
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines infrastructure assumptions for Pro cache and sync support.

requirements:
- sync state cache
- approval state cache
- handoff result cache
- retry-supporting state retention
- explicit stale / pending / failed distinction

principles:
- Pro cache is support state, not authority truth
- cache refresh failure must remain visible
