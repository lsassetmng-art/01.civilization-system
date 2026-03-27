# ============================================================
# TIMETABLE AND ROUTE CONTROL MODEL
# ============================================================

status: canonical
layer: model
scope: railway-work-ui
component: timetable-and-route-control

owner: Boss
prepared_by: Zero


# ============================================================
# 1. TIMETABLE FIELDS
# ============================================================

timetable_fields:
- line_id
- service_pattern
- stop_pattern
- departure_interval
- first_service_time
- last_service_time
- peak_mode_supported
- offpeak_mode_supported
- freight_slot_supported
- military_priority_slot_supported
- buffer_time_rule
- turnaround_time_rule


# ============================================================
# 2. ROUTE CONTROL ACTIONS
# ============================================================

route_control_actions:
- increase_frequency
- reduce_frequency
- change_stop_pattern
- open_express_pattern
- suspend_branch_service
- insert_recovery_train
- reserve_freight_slot
- reserve_emergency_slot
- temporary_short_turn
- reroute_service


# ============================================================
# 3. FINAL RULE
# ============================================================

Timetable control must expose
capacity, punctuality, recovery margin,
and political or social service priority.
