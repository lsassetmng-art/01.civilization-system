# ============================================================
# TRAINSET CREW AND CAPACITY MODEL
# ============================================================

status: canonical
layer: model
scope: railway-work-ui
component: trainset-crew-and-capacity

owner: Boss
prepared_by: Zero


# ============================================================
# 1. TRAINSET FIELDS
# ============================================================

trainset_fields:
- trainset_id
- trainset_class
- capacity_seated
- capacity_total
- maintenance_condition
- operating_cost
- route_compatibility
- emergency_substitution_capability
- prestige_service_capability
- freight_capability


# ============================================================
# 2. CREW FIELDS
# ============================================================

crew_fields:
- crew_group_id
- available_drivers
- available_conductors
- available_dispatch_staff
- qualification_tags
- fatigue_state
- reassignment_cost
- emergency_callup_supported


# ============================================================
# 3. CAPACITY ACTIONS
# ============================================================

capacity_actions:
- assign_trainset_to_line
- reassign_spare_trainset
- increase_peak_capacity
- reduce_low_demand_capacity
- hold_trainset_for_maintenance
- emergency_substitution_assignment
- prestige_service_assignment
- freight_priority_assignment


# ============================================================
# 4. FINAL RULE
# ============================================================

Rail capacity must be shaped
by trainset reality and crew availability,
not by timetable alone.
