# ============================================================
# MULTICURRENCY IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines multicurrency implementation boundaries.

implementation_rules:
- money values are persisted canonically
- display formatting is presentation-layer behavior
- exchange-rate snapshot retrieval is separated from UI logic
- base-currency conversion is explicit
- repositories return canonical and converted values separately
