# ============================================================
# LIFE SPENDING CATEGORY MODEL
# ============================================================

status: canonical-draft
system: life-os
layer: model
domain: personal-finance-lite
owner: Boss
prepared_by: Zero

purpose:
Defines spending category meaning in LifeOS.

entity_name:
life_spending_category

meaning:
Represents a user-practical category for private expense grouping.

core_fields:
- spending_category_id
- user_id
- category_name
- parent_category_name
- created_at
- updated_at
