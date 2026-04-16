# ============================================================
# EXCHANGE RATE SNAPSHOT MODEL
# ============================================================

status: canonical
layer: model
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines exchange rate snapshot structure.

fields:
- exchange_rate_snapshot_id
- source_currency_code
- target_currency_code
- exchange_rate_value
- rate_source
- rate_timestamp
- conversion_method_code
- updated_at

rule:
Converted money must remain traceable
to the rate and timestamp used.
