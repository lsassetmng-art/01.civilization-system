# CasualChatWorker WorkerRentalCore Real API Connection Contract

status: active
phase: Phase O
app_name: CasualChatWorker
display_name: 雑談ワーカー

## 1. Purpose

This document defines the real API connection contract between CasualChatWorker and WorkerRentalCore.

This phase does not apply DB changes and does not connect to production DB directly.

## 2. Boundary

- CasualChatWorker frontend calls API adapter.
- API adapter calls BusinessOS backend endpoint candidates.
- BusinessOS backend owns WorkerRentalCore DB access.
- Runtime frontend must not contain DATABASE_URL or PERSONA_DATABASE_URL.
- Runtime frontend must not call psql.
- aiworker references remain read-only.
- cx22073jw references remain read-only.

## 3. App Canon

- app_code: CasualChatWorker
- service_code: casual_chat_worker
- supported unit: minute
- minimum contract: 30 minutes
- maximum contract: 120 minutes
- allowed durations: 30 / 60 / 90 / 120 minutes
- monthly free ticket source rule: shortest_contract_duration
- monthly free ticket quantity: 2
- one ticket = 30 minutes free
- price 30 minutes: 500 JPY
- price 60 minutes: 1,000 JPY
- price 90 minutes: 1,500 JPY
- price 120 minutes: 2,000 JPY

## 4. Endpoint Candidates

### GET /api/v1/business/worker-rental/service/catalog

Purpose:
- Return active worker rental service settings.

Required response fields:
- app_code
- service_code
- service_name
- supported_units
- minimum_contract
- app_max_contract
- monthly_free_ticket_rule

### GET /api/v1/business/worker-rental/entitlement/balance

Purpose:
- Return monthly free ticket / entitlement balance.

Required request:
- app_code
- service_code
- user_id
- grant_period

Required response:
- app_code
- service_code
- user_id
- entitlement_kind
- entitlement_source_rule
- entitlement_unit_kind
- entitlement_unit_count
- granted_quantity
- used_quantity
- remaining_quantity
- remaining_total_units

### POST /api/v1/business/worker-rental/quote

Purpose:
- Quote rental contract.

Required request:
- app_code
- service_code
- user_id
- worker_owner_schema
- worker_id
- worker_type
- rental_unit_kind
- rental_unit_count
- requested_entitlement_kind
- requested_entitlement_count
- currency_code

Required response:
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
- price_version

### POST /api/v1/business/worker-rental/confirm

Purpose:
- Confirm rental contract.

Required request:
- app_code
- service_code
- user_id
- quote_id
- worker_owner_schema
- worker_id
- worker_type
- rental_unit_kind
- rental_unit_count
- apply_entitlement_count
- confirmed_price_jpy

Required response:
- rental_contract_id
- rental_period_id
- status
- remaining_entitlement_count
- final_price_jpy

### POST /api/v1/business/worker-rental/period/end

Purpose:
- End rental period.

Required request:
- rental_contract_id
- rental_period_id
- ended_reason

Required response:
- rental_contract_id
- rental_period_id
- status
- used_seconds

### GET /api/v1/business/worker-rental/history

Purpose:
- Return rental history.

Required request:
- app_code
- service_code
- user_id
- page
- page_size

Required response:
- contracts
- entitlement_usage
- payment_status

## 5. Post-Apply Gap Check

After WorkerRentalCore DB apply, compare these implementation payload fields with DB views:

- business.v_worker_rental_service_catalog_active
- business.v_worker_rental_monthly_free_ticket_rule
- business.v_worker_rental_price_catalog_active
- business.v_worker_rental_contract_summary
- business.v_worker_rental_entitlement_balance_active

