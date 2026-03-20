# ============================================================
# WAR IMPACT ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
War impact applies war consequences to society, economy, loyalty, and governance.

impact_dimensions:
- casualty_pressure
- economic_damage
- supply_shortage
- loyalty_shift
- political_instability
- migration_pressure
- company_distress

rules:
- war impact must be emitted as downstream domain events
- no direct cross-domain mutation without event emission
- impact severity must reflect resolution state and duration

event_flow:
- war_impact_assessed
- economy_impact_event
- loyalty_impact_event
- governance_impact_event
- population_impact_event

final_rule:
War consequences must propagate through explicit downstream events,
not direct cross-domain mutation.
