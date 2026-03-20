# ============================================================
# WAR OBSERVABILITY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
War observability provides visibility into war state and war-derived effects.

observability_targets:
- war_state
- mobilization_level
- force_readiness
- logistics_breaks
- alliance_response
- peace_transition

rules:
- observability is read-only
- monitoring must not mutate war state
- war logs must remain historically persistent

final_rule:
War observability explains conflict state,
but must never directly alter it.
