# ============================================================
# LIFE OS ENTITY CATALOG
# ============================================================

status: canonical
layer: 030.model
system: life-os
owner: Boss
prepared_by: Zero

purpose:
Catalog the canonical entities handled by Life OS.

entity_list:
- user_life_profile
- health_entry
- meal_entry
- water_intake_entry
- supplement_entry
- sleep_entry
- nap_entry
- activity_entry
- workout_entry
- step_entry
- body_metric_entry
- habit_entry
- medication_entry
- symptom_entry
- mood_entry
- menstruation_entry
- home_life_entry
- schedule_link_entry
- daily_summary_entry
- weekly_summary_entry

entity_rules:
- primary records must be append-oriented
- summaries may be regenerated
- cross-domain references must be explicit
- deletion should be minimized for auditability
