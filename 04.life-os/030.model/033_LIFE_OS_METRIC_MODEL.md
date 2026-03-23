# ============================================================
# LIFE OS METRIC MODEL
# ============================================================

status: canonical
layer: 030.model
system: life-os
owner: Boss
prepared_by: Zero

purpose:
Define the metric system used by Life OS.

metric_groups:
body_metrics:
- weight
- body_fat
- temperature
- heart_rate
- blood_pressure
- blood_glucose
- oxygen_saturation

sleep_metrics:
- sleep_duration
- sleep_start
- sleep_end
- sleep_quality
- wake_count

activity_metrics:
- steps
- distance
- calories_burned
- exercise_minutes
- workout_load

nutrition_metrics:
- calories_intake
- protein
- fat
- carbohydrate
- water_intake
- sodium
- caffeine

habit_metrics:
- completion
- streak
- consistency_score

metric_rules:
- every metric must have unit semantics
- source must be identifiable
- measured and inferred values must be distinguishable
- aggregation windows must be explicit
