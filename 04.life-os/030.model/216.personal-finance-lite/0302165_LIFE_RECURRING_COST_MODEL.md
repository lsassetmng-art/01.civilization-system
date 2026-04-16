# ============================================================
# LIFE RECURRING COST MODEL
# ============================================================

status: canonical-draft
system: life-os
layer: model
domain: personal-finance-lite
owner: Boss
prepared_by: Zero

purpose:
Defines recurring private costs in LifeOS.

entity_name:
life_recurring_cost

meaning:
Represents a repeating personal-life cost.

core_fields:
- recurring_cost_id
- user_id
- title
- expected_amount
- recurrence_rule
- category_name
- note
- created_at
- updated_at
