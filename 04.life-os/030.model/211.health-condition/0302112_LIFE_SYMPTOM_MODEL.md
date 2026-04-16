# ============================================================
# LIFE SYMPTOM MODEL
# ============================================================

status: canonical-draft
system: life-os
layer: model
domain: health-condition
owner: Boss
prepared_by: Zero

purpose:
Defines the symptom fact model used in LifeOS.

entity_name:
life_symptom

meaning:
Represents a user-observed symptom fact recorded for life support purposes.

core_fields:
- symptom_id
- user_id
- recorded_at
- observed_start_at
- symptom_type
- user_description
- perceived_severity
- duration_text
- body_area
- repetition_state
- possible_trigger_note
- visibility_scope
- source_type
- created_at
- updated_at

rules:
- symptom records are fact-oriented, not diagnosis-oriented
- perceived severity is user-reported severity
- user_description may remain freeform
- visibility defaults to private-sensitive

relationships:
- may link to life_condition_record
- may link to life_warning_sign
- may link to daily_checkin snapshot
