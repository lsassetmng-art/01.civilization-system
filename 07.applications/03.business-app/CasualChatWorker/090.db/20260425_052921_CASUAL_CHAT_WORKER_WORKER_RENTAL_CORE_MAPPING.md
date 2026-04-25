# CasualChatWorker WorkerRentalCore Mapping

status: canonical-mapping-updated
generated_at: 20260425_052921
app_name: CasualChatWorker
display_name: 雑談ワーカー

## 1. Decision

CasualChatWorker uses the generic BusinessOS WorkerRentalCore.

Previous app-specific chat_worker_* rental core tables are superseded by worker_rental_* generic tables.

## 2. Generic Core

WorkerRentalCore supports multiple worker-rental apps.

Generic supported units:

- minute
- hour
- day
- month
- year

Generic maximum duration:

- up to 2 years

## 3. App-Specific Limit

CasualChatWorker is app-specific capped:

- minimum contract: 30 minutes
- maximum contract: 120 minutes
- supported unit in v1: minute
- allowed durations: 30 / 60 / 90 / 120 minutes

This means WorkerRentalCore can support long rentals for other apps, but CasualChatWorker cannot exceed 2 hours.

## 4. App-Specific Price

Prices are not globally shared.

CasualChatWorker price catalog:

- app_code: CasualChatWorker
- service_code: casual_chat_worker
- 30 minutes: 500 JPY
- 60 minutes: 1,000 JPY
- 90 minutes: 1,500 JPY
- 120 minutes: 2,000 JPY

Other worker-rental apps may define different prices.

## 5. Monthly Free Ticket Rule

Monthly free ticket is a generic entitlement rule, but the free duration is app-specific.

Rule:

- one monthly free ticket makes the shortest contract duration of that app free

CasualChatWorker:

- shortest contract duration: 30 minutes
- monthly free ticket quantity: 2
- one ticket = 30 minutes free
- monthly total = 60 minutes free
- carryover: false in v1

Other apps:

- shortest contract duration 10 minutes => one ticket = 10 minutes free
- shortest contract duration 60 minutes => one ticket = 60 minutes free

## 6. Generated Package

- migration_file: /data/data/com.termux/files/home/03.civilization-development/03.business-os/_worker-rental/db/migrations/20260425_052921_business_worker_rental_core_app_limit_free_ticket_ddl.sql
- apply_script: /data/data/com.termux/files/home/03.civilization-development/03.business-os/_worker-rental/db/apply/20260425_052921_apply_business_worker_rental_core_app_limit_free_ticket_ddl.sh
- verify_sql: /data/data/com.termux/files/home/03.civilization-development/03.business-os/_worker-rental/db/verification/20260425_052921_verify_business_worker_rental_core_app_limit_free_ticket_ddl.sql
- verify_script: /data/data/com.termux/files/home/03.civilization-development/03.business-os/_worker-rental/db/verification/20260425_052921_verify_business_worker_rental_core_app_limit_free_ticket_ddl.sh

## 7. Apply Rule

Do not apply without explicit Boss approval and 佐藤（DB担当）review.

