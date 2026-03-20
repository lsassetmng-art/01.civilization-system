# ============================================================
# EXCHANGE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
Exchange governs boundary conversion rules between currency layers.

purpose:
- formalize valid currency conversions
- prevent illegal value leakage between internal and external systems

supported_flows:
- real_money -> civ_cash
- lawful external purchase boundary conversions

forbidden_flows:
- national_currency -> real_money
- national_currency -> civ_cash by silent shortcut
- treasury_balance -> creator payout direct shortcut

rules:
- every exchange must identify source, target, and lawful conversion path
- invalid exchange requests must fail closed
- conversion rate source must be explicit

event_flow:
- conversion_requested
- conversion_validated
- conversion_executed
- ledger_recorded

constitution_alignment:
- explicit conversion boundary
- no hidden value transformation

final_rule:
Exchange is a regulated boundary, not a free conversion shortcut.
