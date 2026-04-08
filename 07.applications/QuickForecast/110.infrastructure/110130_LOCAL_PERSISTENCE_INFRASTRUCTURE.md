# ============================================================
# LOCAL PERSISTENCE INFRASTRUCTURE
# ============================================================

status: canonical
layer: infrastructure
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines local persistence infrastructure assumptions.

requirements:
- persistence available without constant network
- draft writes should be fast
- reads should support quick resume
- failed Pro linkage must not corrupt local draft continuity
- local state versioning should be considered for schema evolution
