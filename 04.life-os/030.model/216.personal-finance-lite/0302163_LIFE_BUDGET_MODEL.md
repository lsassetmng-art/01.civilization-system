# ============================================================
# LIFE BUDGET MODEL
# ============================================================

status: canonical-draft
system: life-os
layer: model
domain: personal-finance-lite
owner: Boss
prepared_by: Zero

purpose:
Defines the budget model in LifeOS.

entity_name:
life_budget

meaning:
Represents a lightweight budget frame for a private life category or period.

core_fields:
- budget_id
- user_id
- period_type
- period_start
- period_end
- category_name
- target_amount
- currency_code
- review_state
- note
- created_at
- updated_at

rules:
- budgets are advisory frames
- budgets do not become accounting truth
