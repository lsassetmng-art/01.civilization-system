# ============================================================
# LIFE OS DOMAIN MODEL
# ============================================================

status: canonical
layer: 030.model
system: life-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical top-level domains of Life OS.

principles:
- user-life centered
- record first
- daily continuity
- extensible but bounded
- personal data separated from persona data

core_domains:
- life_profile
- health_record
- meal_record
- sleep_record
- activity_record
- body_metric_record
- habit_record
- life_event_record
- daily_summary

domain_descriptions:
life_profile:
  purpose: Hold stable user life settings and baseline attributes.

health_record:
  purpose: Store health-related observations, symptoms, condition notes, and wellness inputs.

meal_record:
  purpose: Store food, drink, nutrition, meal time, and meal context records.

sleep_record:
  purpose: Store bedtime, wake time, duration, quality, and sleep notes.

activity_record:
  purpose: Store movement, exercise, training, and general physical activity.

body_metric_record:
  purpose: Store measurable body values such as weight, body fat, temperature, or blood pressure.

habit_record:
  purpose: Store habit execution and continuity tracking.

life_event_record:
  purpose: Store user life events linked to home, routine, condition, or personal schedule.

daily_summary:
  purpose: Represent a synthesized daily state derived from primary records.

out_of_scope:
- persona state
- character visual state
- business ledger
- civilization economy state
