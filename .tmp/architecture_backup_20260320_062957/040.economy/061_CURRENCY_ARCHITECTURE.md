# ============================================================
# CURRENCY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
Civilization uses a multi-layer currency model with strict separation
between external money, premium currency, and nation-level internal currency.

purpose:
- separate real-world purchase flow from in-world economy
- preserve economic balance
- prevent illegal conversion loops

currency_layers:
- real_money
- civ_cash
- national_currency

real_money:
- exists outside civilization economy
- used only at external purchase boundary
- never circulates inside nation economy

civ_cash:
- premium global currency
- used for premium services, acceleration, and selected system actions
- not equivalent to national treasury currency

national_currency:
- nation-scoped internal economic currency
- used for wages, taxes, business operations, and treasury flows
- not directly redeemable into real money

rules:
- no direct national_currency -> real_money conversion
- no silent currency substitution
- every conversion boundary must be explicit and auditable
- different currency layers must remain structurally distinct

event_flow:
- purchase_requested
- external_payment_confirmed
- civ_cash_issued
- internal_transaction_recorded
- treasury_flow_recorded

constitution_alignment:
- explicit value lineage
- no hidden conversion
- fail closed on invalid conversion request

final_rule:
Currency layers must remain separated by explicit boundaries
and must never collapse into one another silently.
