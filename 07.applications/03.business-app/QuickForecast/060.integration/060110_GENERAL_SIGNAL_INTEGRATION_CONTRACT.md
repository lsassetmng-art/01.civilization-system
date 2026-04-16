# ============================================================
# GENERAL SIGNAL INTEGRATION CONTRACT
# ============================================================

status: canonical
layer: integration
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the contract family for public/general forecasting signals.

signal_families:
- climate
- season
- location
- event
- competitor_general
- market_general

contract_rules:
- source type must be explicit
- signal summary must remain explainable
- unsupported or unverifiable signal forms must be rejectable
- signal usage must not falsely imply enterprise authority
