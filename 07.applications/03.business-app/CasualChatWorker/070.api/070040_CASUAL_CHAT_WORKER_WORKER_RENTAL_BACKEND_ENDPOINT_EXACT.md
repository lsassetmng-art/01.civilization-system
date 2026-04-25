# CasualChatWorker WorkerRentalCore Backend Endpoint Exact

status: active
phase: Phase P
app_name: CasualChatWorker
display_name: 雑談ワーカー

## 1. Purpose

Define backend endpoint skeleton for CasualChatWorker to use WorkerRentalCore after DB apply.

## 2. Boundary

- Frontend does not access DB directly.
- Backend endpoint layer queries business.worker_rental_*.
- DB read/write uses PERSONA_DATABASE_URL only on backend.
- ERP DATABASE_URL is not used.
- AIWorkerOS is read-only for worker catalog/style/tendency.
- CX22073JW is read-only for smalltalk material.

## 3. Endpoint Set

### GET service catalog

GET /api/v1/business/worker-rental/service/catalog

Reads:

- business.v_worker_rental_service_catalog_active

Required query:

- app_code
- service_code

### GET entitlement balance

GET /api/v1/business/worker-rental/entitlement/balance

Reads:

- business.v_worker_rental_entitlement_balance_active
- business.v_worker_rental_monthly_free_ticket_rule

Required query:

- app_code
- service_code
- user_id
- grant_period

### POST quote

POST /api/v1/business/worker-rental/quote

Reads:

- business.v_worker_rental_service_catalog_active
- business.v_worker_rental_price_catalog_active
- business.v_worker_rental_entitlement_balance_active

Rules:

- CasualChatWorker supports minute only.
- CasualChatWorker allowed durations are 30 / 60 / 90 / 120.
- CasualChatWorker max is 120 minutes.
- monthly free ticket means shortest_contract_duration.
- one CasualChatWorker ticket = 30 minutes.
- price is app-specific.

### POST confirm

POST /api/v1/business/worker-rental/confirm

Writes in future backend implementation:

- business.worker_rental_contract
- business.worker_rental_contract_line
- business.worker_rental_period
- business.worker_rental_payment_intent
- business.worker_rental_entitlement_usage

Current skeleton does not write. It defines payload and validation shape only.

### GET history

GET /api/v1/business/worker-rental/history

Reads:

- business.v_worker_rental_contract_summary
- business.worker_rental_entitlement_usage
- business.worker_rental_payment_intent

## 4. Post-Apply Readonly Verification

Read-only snapshot must confirm:

- service row exists for CasualChatWorker / casual_chat_worker
- minimum contract = 30 minutes
- app max contract = 120 minutes
- monthly free ticket source = shortest_contract_duration
- monthly ticket quantity = 2
- one ticket = 30 minutes
- price rows exist for 30/60/90/120 minutes
- required views exist
- required tables exist

## 5. STOP Conditions

Do not switch frontend to real mode until:

- DB read-only snapshot PASS
- backend endpoint skeleton tests PASS
- endpoint implementation exists
- auth/session policy exists
- payload gap check PASS
- no DB secrets in frontend
