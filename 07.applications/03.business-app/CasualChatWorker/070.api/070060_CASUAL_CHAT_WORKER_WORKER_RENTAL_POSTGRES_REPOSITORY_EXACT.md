# CasualChatWorker WorkerRentalCore PostgreSQL Repository Skeleton Exact

status: active
phase: Phase R
app_name: CasualChatWorker
display_name: 雑談ワーカー

## 1. Purpose

Define PostgreSQL repository skeleton for WorkerRentalCore backend implementation.

This phase creates backend code only.
It does not connect to DB and does not execute DB writes.

## 2. Backend Boundary

- PostgreSQL repository belongs to BusinessOS backend layer.
- Browser/frontend must never access DB directly.
- DB connection is injected from backend runtime.
- Frontend real mode remains disabled until backend tests and payload gap checks pass.
- ERP DATABASE_URL is not used.

## 3. Repository Methods

Required read methods:

- findServiceCatalog(appCode, serviceCode)
- findMonthlyFreeTicketRule(appCode, serviceCode)
- findPriceRow(appCode, serviceCode, rentalUnitKind, rentalUnitCount)
- findEntitlementBalance(appCode, serviceCode, userId, grantPeriod)

Required write/transaction methods for future backend runtime:

- ensureMonthlyEntitlementBalance(...)
- createConfirmedRentalTransaction(...)

## 4. Confirm Transaction Writes

The future runtime transaction will write:

- business.worker_rental_contract
- business.worker_rental_contract_line
- business.worker_rental_period
- business.worker_rental_payment_intent
- business.worker_rental_entitlement_usage
- business.worker_rental_status_history
- business.worker_rental_entitlement_balance update

## 5. Validation

CasualChatWorker must continue enforcing:

- app_code = CasualChatWorker
- service_code = casual_chat_worker
- rental_unit_kind = minute
- rental_unit_count in 30 / 60 / 90 / 120
- maximum 120 minutes
- monthly free ticket source = shortest_contract_duration
- one ticket = 30 minutes
- monthly ticket quantity = 2

