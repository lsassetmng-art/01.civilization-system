# ============================================================
# LIFE PERSONAL EXPENSE MULTI CURRENCY EXTENSION MODEL
# ============================================================

status: canonical-draft
system: life-os
layer: model
domain: personal-finance-lite
owner: Boss
prepared_by: Zero

purpose:
Defines multi-currency extension fields for personal expense handling.

entity_name:
life_personal_expense_multi_currency_extension

meaning:
Extends private expense handling to preserve both original currency facts
and user-facing display currency values.

core_fields:
- expense_currency_extension_id
- expense_id
- source_amount
- source_currency_code
- display_amount
- display_currency_code
- conversion_rate_reference
- conversion_applied_at
- conversion_note
- created_at
- updated_at

rules:
- source_amount and source_currency_code are original fact values
- display_amount and display_currency_code are summary/display values
- converted display values must remain traceable
