# CasualChatWorker WorkerRentalCore Endpoint Integration Test Plan

status: active
phase: Phase S
app_name: CasualChatWorker
display_name: 雑談ワーカー

## 1. Purpose

Define endpoint integration tests before frontend real mode is enabled.

## 2. Required Endpoint Tests

- service catalog returns CasualChatWorker service row
- entitlement balance returns monthly shortest-contract free ticket state
- quote 30 minutes with one ticket returns 0 JPY
- quote 60 minutes with two tickets returns 0 JPY
- quote 90 minutes with two tickets returns 500 JPY
- quote 120 minutes with two tickets returns 1,000 JPY
- quote 150 minutes is rejected
- confirm 90 minutes with two tickets returns confirmed
- remaining entitlement count decreases
- payload gap check passes

## 3. Required Security Tests

- unauthenticated confirm is rejected
- mismatched user_id confirm is rejected
- frontend has no DB connection string
- no browser-side psql
- no ERP DB path

