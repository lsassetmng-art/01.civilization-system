# ============================================================
# AICompanyManager Phase K Roadmap
# ============================================================

app_name: AICompanyManager
display_name: AI企業運営アプリ
category: 03.business-app
phase: Phase K
status: review-delivery-ui-started
owner: Boss
prepared_by: Zero

## 1. App Development Roadmap

### Completed

Phase A:
- App skeleton design

Phase B:
- DB / API / State exact design

Phase C:
- DB DDL review package

Phase D:
- DB apply preparation package

Phase E Persona DB:
- Persona-side DB apply
- reserved word fix
- current_role_code fixed

Phase F:
- Persona-side RLS exact design

Phase G-Gate:
- RLS apply gate created
- RLS apply not executed

Phase H:
- BusinessOS implementation skeleton

Phase I:
- API client mock
- AIWorkerOS bridge mock
- local queue event wiring

Phase J:
- offline-first queue UX
- retry / conflict presentation
- CommonOS sync presenter mapping

### Current

Phase K:
- review board UI completion
- return request panel
- delivery board UI completion
- human approval panel
- delivery acceptance action
- event log and queue integration

### Remaining

Phase L:
- real server route and AIWorkerOS bridge integration

Phase M:
- RLS apply if Boss gives RLS OK / GO

Phase N:
- acceptance test and final handoff

## 2. Category Selection

- 01.civilization-app
- 02.persona-app
▶ 03.business-app
- 04.life-app
- 05.game-app
- 06.streaming-app

## 3. Phase K Scope

Create and wire:

- review approval action
- return request action
- human approval action
- human revision request action
- delivery acceptance action
- review board rendering
- delivery board rendering
- approval panel rendering
- smoke check update

## 4. Out of Scope

Phase K does not:

- apply RLS
- modify DB
- call live AIWorkerOS
- implement production auth
- deploy

## 5. Completion Conditions

- review approve button exists
- review return button exists
- human approval button exists
- revision request button exists
- delivery acceptance button exists
- queue items are created for each operation
- event log records each operation
- smoke check passes
