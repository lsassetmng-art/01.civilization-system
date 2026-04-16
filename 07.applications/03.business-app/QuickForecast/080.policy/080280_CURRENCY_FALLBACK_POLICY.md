# ============================================================
# CURRENCY FALLBACK POLICY
# ============================================================

status: canonical
layer: policy
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines fallback behavior for unsupported or unavailable currency display.

fallback_order:
1. preferred display currency
2. base currency
3. source currency
4. canonical fallback currency

rule:
Currency display fallback must never destroy
the original money meaning.
