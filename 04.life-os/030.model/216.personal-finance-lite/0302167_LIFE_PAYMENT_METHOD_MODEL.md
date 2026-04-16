# ============================================================
# LIFE PAYMENT METHOD MODEL
# ============================================================

status: canonical-draft
system: life-os
layer: model
domain: personal-finance-lite
owner: Boss
prepared_by: Zero

purpose:
Defines payment method references in LifeOS.

entity_name:
life_payment_method

meaning:
Represents a user payment method label for private expenses.

core_fields:
- payment_method_id
- user_id
- method_name
- method_type
- note
- created_at
- updated_at
