# ============================================================
# MULTICURRENCY POLICY
# ============================================================

status: canonical
layer: policy
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines multicurrency policy for QuickForecast.

policy_principles:
- canonical money meaning must remain stable
- source currency, base currency, and display currency must be separated
- exchange-rate context must be retained
- profit comparison must use base currency
- display formatting must not replace canonical money meaning

important_rule:
Multicurrency support must not break
proposal meaning, profit meaning,
or ERP-facing monetary integrity.
