# ============================================================
# LIFE PERSONAL EXPENSE MODEL
# ============================================================

status: canonical-draft
system: life-os
layer: model
domain: personal-finance-lite
owner: Boss
prepared_by: Zero

purpose:
Defines the lightweight personal expense model in LifeOS.

entity_name:
life_personal_expense

meaning:
Represents a private expense fact for personal-life tracking.

core_fields:
- expense_id
- user_id
- spent_at
- amount
- currency_code
- category_name
- payment_method
- merchant_name
- purpose_note
- linked_home_item_id
- visibility_scope
- created_at
- updated_at

rules:
- this model is not an accounting ledger
- category naming must remain user-practical
- private visibility is default
