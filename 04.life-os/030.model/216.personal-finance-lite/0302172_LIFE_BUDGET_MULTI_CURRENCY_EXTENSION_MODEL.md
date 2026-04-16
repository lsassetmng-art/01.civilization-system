# ============================================================
# LIFE BUDGET MULTI CURRENCY EXTENSION MODEL
# ============================================================

status: canonical-draft
system: life-os
layer: model
domain: personal-finance-lite
owner: Boss
prepared_by: Zero

purpose:
Defines multi-currency extension fields for budget handling.

entity_name:
life_budget_multi_currency_extension

meaning:
Extends budget handling so LifeOS can compare mixed-currency expenses
using a chosen comparison currency.

core_fields:
- budget_currency_extension_id
- budget_id
- budget_currency_code
- comparison_currency_code
- conversion_policy_type
- stale_rate_warning_enabled
- created_at
- updated_at

rules:
- budget currency and comparison currency may be the same or different
- comparison logic must remain understandable to the user
