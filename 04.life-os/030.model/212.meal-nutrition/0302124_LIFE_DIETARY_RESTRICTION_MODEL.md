# ============================================================
# LIFE DIETARY RESTRICTION MODEL
# ============================================================

status: canonical-draft
system: life-os
layer: model
domain: meal-nutrition
owner: Boss
prepared_by: Zero

purpose:
Defines dietary restriction records in LifeOS.

entity_name:
life_dietary_restriction

meaning:
Represents food restriction scope for life support.

core_fields:
- dietary_restriction_id
- user_id
- restriction_type
- item_or_group
- reason_type
- note
- created_at
- updated_at
