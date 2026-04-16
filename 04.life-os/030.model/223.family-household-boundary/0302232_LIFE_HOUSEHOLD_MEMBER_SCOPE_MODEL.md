# ============================================================
# LIFE HOUSEHOLD MEMBER SCOPE MODEL
# ============================================================

status: canonical-draft
system: life-os
layer: model
domain: family-household-boundary
owner: Boss
prepared_by: Zero

purpose:
Defines household-member scope in LifeOS.

entity_name:
life_household_member_scope

meaning:
Represents a household-aware scope definition for shared life operations.

core_fields:
- household_member_scope_id
- user_id
- member_label
- scope_type
- note
- created_at
