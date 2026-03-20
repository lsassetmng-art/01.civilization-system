# ============================================================
# MOBILIZATION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
Mobilization is the transition from peace readiness to war readiness.

mobilization_scopes:
- partial_mobilization
- full_mobilization
- emergency_mobilization

effects:
- manpower activation
- industry conversion
- logistics strain
- civilian economy disruption
- loyalty impact

rules:
- mobilization must be explicit
- mobilization level affects economy and public stability
- demobilization must also be explicit

event_flow:
- mobilization_requested
- mobilization_authorized
- military_readiness_increased
- civilian_impact_recalculated
- demobilization_requested
- demobilization_executed

final_rule:
Mobilization is a formal national transition, not an invisible readiness toggle.
