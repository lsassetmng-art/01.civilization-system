# ============================================================
# PLAYER HEALTH ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
Player health represents physical condition, disease status,
fatigue state, and survivability.

purpose:
- determine whether the player can act normally
- affect study, labor, interview, and relationship outcomes
- provide illness, injury, recovery, and death pathways

core_attributes:
- hp
- physical_condition
- fatigue_level
- disease_status
- injury_status
- mental_load
- recovery_rate

health_states:
- healthy
- tired
- ill
- injured
- critical
- deceased

health_change_drivers:
- time allocation imbalance
- overwork
- insufficient rest
- accident events
- disease events
- healthcare access
- age progression

rules:
- health must not be updated directly by UI
- health changes occur only through explicit events
- death is a terminal state transition
- critical condition does not automatically imply death
- recovery requires time, treatment, or recovery events

event_flow:
- health_risk_detected
- health_change_event
- condition_recalculated
- health_state_transition
- player_availability_recalculated

integration_points:
- education
- labor
- relationship
- family
- economy
- time system

constitution_alignment:
- no direct mutation
- event-driven transition only
- fail closed on invalid state change

final_rule:
All player health changes must be event-driven, traceable,
and reflected as explicit state transitions.
