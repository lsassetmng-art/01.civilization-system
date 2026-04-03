# ============================================================
# MOBILIZATION LEVEL MODEL
# ============================================================

status: canonical
layer: model
scope: military-service-and-mobilization
component: mobilization-level

owner: Boss
prepared_by: Zero


# ============================================================
# 1. MOBILIZATION LEVELS
# ============================================================

mobilization_levels:
- peacetime
- readiness_increase
- partial_callup
- broad_callup
- emergency_general_mobilization


# ============================================================
# 2. FINAL RULE
# ============================================================

Mobilization level
changes how intake, reserve response,
and coercion are applied.
