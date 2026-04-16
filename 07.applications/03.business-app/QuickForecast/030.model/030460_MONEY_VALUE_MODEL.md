# ============================================================
# MONEY VALUE MODEL
# ============================================================

status: canonical
layer: model
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines canonical money value structure.

fields:
- money_value_id
- amount_value
- currency_code
- scale_code
- amount_kind
- updated_at

amount_kind_examples:
- source_amount
- base_amount
- display_amount

rule:
Money must be handled as amount plus currency code,
never as naked numeric value only.
