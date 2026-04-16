# ============================================================
# LIFE ALLERGY MODEL
# ============================================================

status: canonical-draft
system: life-os
layer: model
domain: meal-nutrition
owner: Boss
prepared_by: Zero

purpose:
Defines allergy-related records in LifeOS.

entity_name:
life_allergy

meaning:
Represents an allergy or strong adverse food relation the user wants LifeOS to respect.

core_fields:
- allergy_id
- user_id
- allergen_name
- severity_label
- reaction_note
- created_at
- updated_at
