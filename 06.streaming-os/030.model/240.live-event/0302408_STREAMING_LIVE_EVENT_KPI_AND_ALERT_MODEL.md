# ============================================================
# STREAMING LIVE EVENT KPI AND ALERT MODEL
# ============================================================

status: canonical
layer: model
system: streaming-os
owner: Boss
prepared_by: Zero

purpose:
Define KPI and alert visibility
for live events.

kpis:
- ticket_sales_rate
- attendance_rate
- seat_fill_rate
- total_revenue
- gross_profit
- merchandise_revenue
- food_beverage_revenue
- satisfaction_score
- schedule_delay_rate
- complaint_rate
- event_cleanliness_rate
- safety_score
- hype_score
- repeat_event_probability

alerts:
- low_ticket_sales_alert
- over_capacity_alert
- security_shortage_alert
- sanitation_decline_alert
- crowd_pressure_alert
- performer_issue_alert
- weather_risk_alert
- protest_or_riot_alert
- merchandise_stockout_alert
- emergency_medical_alert
- schedule_delay_alert
- post_event_cleanup_failure_alert

final_rule:
Live event operation
must expose performance and risk in a single monitoring surface.
