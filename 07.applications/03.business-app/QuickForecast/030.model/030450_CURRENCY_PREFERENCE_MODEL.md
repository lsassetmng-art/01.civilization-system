# ============================================================
# CURRENCY PREFERENCE MODEL
# ============================================================

status: canonical
layer: model
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines multicurrency preference handling.

fields:
- currency_preference_id
- user_id
- preferred_display_currency_code
- preferred_base_currency_code
- currency_fallback_code
- rounding_policy_code
- updated_at

rule:
Currency preference affects display and comparison basis,
but does not rewrite canonical source money values.
