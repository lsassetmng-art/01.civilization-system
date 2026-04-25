# CasualChatWorker WorkerRentalCore Non-Production DB Dry-Run Design

status: active
phase: Phase S
app_name: CasualChatWorker
display_name: 雑談ワーカー

## 1. Purpose

Define non-production DB dry-run package.

## 2. Rule

The dry-run runner must not execute unless all flags are set:

- CCW_ENABLE_NONPROD_DB_DRY_RUN=1
- CCW_CONFIRM_ROLLBACK_TEST=1
- PERSONA_DATABASE_URL is set

The runner must:

- connect only through PERSONA_DATABASE_URL
- start a transaction
- perform test insert/update through backend repository
- verify expected response
- rollback
- never commit

## 3. STOP

Stop if:

- flags are missing
- dry-run tries to commit
- ERP DB variable is used
- rollback fails
- payload gap fails

