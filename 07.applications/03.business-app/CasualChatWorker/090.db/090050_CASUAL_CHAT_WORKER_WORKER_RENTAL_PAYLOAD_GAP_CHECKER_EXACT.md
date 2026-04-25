# CasualChatWorker WorkerRentalCore Payload Gap Checker Exact

status: active
phase: Phase R
app_name: CasualChatWorker
display_name: 雑談ワーカー

## 1. Purpose

Define exact payload gap checker between:

- frontend payload contract
- backend endpoint response
- WorkerRentalCore DB view fields

## 2. Required Comparisons

Service catalog must include:

- app_code
- service_code
- service_name
- supported_units
- minimum_contract
- app_max_contract
- monthly_free_ticket_rule

Quote response must include:

- quote_id
- app_code
- service_code
- rental_unit_kind
- rental_unit_count
- base_price_jpy
- applied_entitlement_count
- free_unit_count
- paid_unit_count
- final_price_jpy
- entitlement_source_rule
- price_version
- currency_code

Confirm response must include:

- rental_contract_id
- rental_period_id
- app_code
- service_code
- status
- rental_unit_kind
- rental_unit_count
- final_price_jpy
- remaining_entitlement_count

## 3. STOP

Do not enable real mode if any required field is missing.

