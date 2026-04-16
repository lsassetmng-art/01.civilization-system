# ============================================================
# LIFE MEDICATION MODEL
# ============================================================

status: canonical-draft
system: life-os
layer: model
domain: health-condition
owner: Boss
prepared_by: Zero

purpose:
Defines the medication fact model used in LifeOS.

entity_name:
life_medication

meaning:
Represents a user medication record for personal life tracking.

core_fields:
- medication_id
- user_id
- medication_name
- intake_at
- scheduled_at
- dose_text
- route_text
- purpose_note
- adherence_state
- side_effect_note
- source_type
- visibility_scope
- created_at
- updated_at

rules:
- medication_name remains a fact field, not a treatment recommendation
- dose_text is stored as user-facing trace data
- recommendation logic must not mutate medication facts
