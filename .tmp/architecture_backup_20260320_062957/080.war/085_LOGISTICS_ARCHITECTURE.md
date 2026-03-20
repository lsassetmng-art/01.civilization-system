# ============================================================
# LOGISTICS ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
Logistics supplies military operations with transport, fuel, materials,
and sustainment capacity.

components:
- supply_lines
- transport_capacity
- fuel_or_energy_capacity
- maintenance_support
- reserve_flow

effects:
- determines sustained military effectiveness
- constrains offensive and defensive reach
- creates war pressure on economy

rules:
- strong force without logistics must degrade over time
- logistics failure must explicitly affect war resolution
- supply cannot be assumed infinitely available

event_flow:
- logistics_capacity_evaluated
- supply_shortage_detected
- sustainment_adjustment_applied
- logistics_breakdown_event

final_rule:
No military operation may be treated as sustainable without explicit logistics support.
