# ============================================================
# LIFE VISIT RECORD MODEL
# ============================================================

status: canonical-draft
system: life-os
layer: model
domain: health-condition
owner: Boss
prepared_by: Zero

purpose:
Defines visit and appointment records in LifeOS.

entity_name:
life_visit_record

meaning:
Represents a clinic, hospital, pharmacy, or related visit fact.

core_fields:
- visit_record_id
- user_id
- visit_type
- place_name
- scheduled_at
- visited_at
- outcome_note
- followup_required
- followup_at
- created_at
- updated_at
