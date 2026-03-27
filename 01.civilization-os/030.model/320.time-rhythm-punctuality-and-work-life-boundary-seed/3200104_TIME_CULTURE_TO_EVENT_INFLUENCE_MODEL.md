# ============================================================
# TIME CULTURE TO EVENT INFLUENCE MODEL
# ============================================================

status: canonical
layer: model
scope: time-rhythm-punctuality-and-work-life-boundary-seed
component: time-culture-to-event-influence

owner: Boss
prepared_by: Zero


# ============================================================
# 1. INFLUENCE RULES
# ============================================================

influence_rules:
- morning_orientation_tendency modifies school and work start stability events
- night_activity_tendency modifies nightlife, late-hour city, and sleep-disruption events
- punctuality_strictness_tendency modifies lateness penalty and formal trust events
- lateness_tolerance_tendency modifies friendship flexibility and schedule slippage events
- appointment_precision_tendency modifies meeting, interview, and service reliability events
- schedule_density_tendency modifies fatigue and overload events
- after_hours_work_leakage_tendency modifies burnout and work-family spillover events
- work_life_boundary_strength_tendency modifies recovery and private-time protection events
- family_time_protection_tendency modifies household cohesion and shared-meal timing events
- waiting_tolerance_tendency modifies queue stress and social patience events
- public_time_discipline_tendency modifies transport, school, and office synchronization events
- class_time_gap_tendency modifies visible power-over-time and time-stress inequality events


# ============================================================
# 2. FINAL RULE
# ============================================================

Time-culture indicators must be usable
as modifiers for labor, family, school, nightlife, and stress events.
