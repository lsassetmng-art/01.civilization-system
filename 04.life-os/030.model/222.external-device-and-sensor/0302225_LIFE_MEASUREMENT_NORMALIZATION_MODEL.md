# ============================================================
# LIFE MEASUREMENT NORMALIZATION MODEL
# ============================================================

status: canonical-draft
system: life-os
layer: model
domain: external-device-and-sensor
owner: Boss
prepared_by: Zero

purpose:
Defines normalization results for imported measurements.

entity_name:
life_measurement_normalization

meaning:
Represents how a measurement was normalized into LifeOS meaning.

core_fields:
- measurement_normalization_id
- user_id
- source_measurement_id
- normalized_type
- normalized_value_text
- normalization_note
- created_at
