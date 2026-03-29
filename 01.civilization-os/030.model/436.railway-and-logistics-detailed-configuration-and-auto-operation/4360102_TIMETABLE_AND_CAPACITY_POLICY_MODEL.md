# ============================================================
# TIMETABLE AND CAPACITY POLICY MODEL
# ============================================================

status: canonical
layer: model
scope: railway-and-logistics-detailed-configuration-and-auto-operation
component: timetable-and-capacity-policy

owner: Boss
prepared_by: Zero


capacity_policies:
- fixed_schedule
- adaptive_schedule
- peak_boost_schedule
- low_cost_schedule
- emergency_buffer_schedule
- cargo_window_priority


# FINAL RULE

Capacity policy
must control throughput and crowding behavior.
