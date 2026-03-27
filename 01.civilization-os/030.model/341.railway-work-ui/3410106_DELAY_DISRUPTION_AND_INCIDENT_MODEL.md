# ============================================================
# DELAY DISRUPTION AND INCIDENT MODEL
# ============================================================

status: canonical
layer: model
scope: railway-work-ui
component: delay-disruption-and-incident

owner: Boss
prepared_by: Zero


# ============================================================
# 1. INCIDENT TYPES
# ============================================================

incident_types:
- minor_delay_spread
- signal_failure
- rolling_stock_failure
- crew_shortage
- overcrowding_spike
- track_blockage
- weather_disruption
- freight_conflict
- military_priority_interruption
- station_incident
- strike_or_labor_disruption
- sabotage_or_security_disruption


# ============================================================
# 2. RESPONSE ACTIONS
# ============================================================

response_actions:
- hold_and_recover
- skip_stop_recovery
- short_turn_recovery
- line_suspension
- bus_or_alt_transport_substitution
- emergency_repair_dispatch
- emergency_staff_reassignment
- information_priority_broadcast
- crowd_restriction_mode
- military_or_state_priority_override


# ============================================================
# 3. RESULT FIELDS
# ============================================================

result_fields:
- punctuality_delta
- passenger_trust_delta
- crowding_delta
- cost_delta
- backlog_delta
- political_attention_delta
- safety_risk_delta


# ============================================================
# 4. FINAL RULE
# ============================================================

Disruption handling must expose
the choice between punctuality recovery,
passenger pain distribution,
cost increase,
and reputational damage.
