# ============================================================
# AICompanyManager Acceptance Test Plan
# ============================================================

app_name: AICompanyManager
display_name: AI企業運営アプリ
category: 03.business-app
phase: Phase N
status: acceptance-test-plan-created

## 1. Purpose

This document defines the Phase N acceptance test plan.

## 2. Acceptance Targets

Design side:

- INDEX exists
- OVERVIEW exists
- integrated design exists
- Phase A through Phase L completion documents exist where available
- Phase N roadmap exists
- final handoff exists

Implementation side:

- implementation root exists
- static app exists
- CSS exists
- app JavaScript exists
- API client exists
- payload adapter exists
- server route client exists
- AIWorkerOS bridge placeholder exists
- review / delivery action module exists
- local queue exists
- CommonOS sync presenter exists
- CommonOS consumer folders exist
- server route placeholder docs exist
- smoke check exists

Safety:

- no client-side secret patterns
- no DB write in Phase N
- no RLS apply in Phase N
- no live AIWorkerOS call in Phase N
- runtime remains mock by default

## 3. Acceptance Result Meaning

PASS:
- implementation is ready for next integration/hardening phase
- RLS can remain deferred
- live bridge can remain behind safe mock switch

FAIL:
- repair the failed file or content check
- rerun acceptance test
