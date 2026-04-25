# CasualChatWorker WorkerRentalCore Secure Backend Runtime Config

status: active
phase: Phase S
app_name: CasualChatWorker
display_name: 雑談ワーカー

## 1. Purpose

Define secure backend runtime configuration for WorkerRentalCore real API.

## 2. Boundary

- Frontend must not contain DB connection strings.
- Frontend must not execute psql.
- Backend runtime may receive secure DB connection from server environment only.
- ERP-side connection is forbidden for this BusinessOS WorkerRentalCore path.
- Real mode is disabled until explicit switch gate passes.

## 3. Runtime Modes

Allowed backend modes:

- mock
- local_in_memory
- nonprod_db_dry_run
- real_backend

Default:

- local_in_memory

Production-like real mode requires:

- secure backend runtime
- authenticated context provider
- endpoint integration tests
- payload gap check
- Boss approval

## 4. CasualChatWorker Canon

- app_code: CasualChatWorker
- service_code: casual_chat_worker
- min contract: 30 minutes
- max contract: 120 minutes
- free ticket rule: shortest_contract_duration
- monthly tickets: 2
- one ticket: 30 minutes

