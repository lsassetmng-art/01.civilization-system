# ============================================================
# EXCHANGE RATE POLICY
# ============================================================

status: canonical
layer: policy
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines exchange rate handling policy.

rules:
- no silent conversion without rate context
- rate source must be attributable
- rate timestamp must be preserved
- rounding policy must be explicit
- approximate display must be distinguishable when required
