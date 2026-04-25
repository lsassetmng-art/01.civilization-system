# ============================================================
# AICompanyManager Phase I Roadmap
# ============================================================

app_name: AICompanyManager
display_name: AI企業運営アプリ
category: 03.business-app
phase: Phase I
status: api-bridge-queue-wiring-started
owner: Boss
prepared_by: Zero

## 1. App Development Roadmap

### Completed

Phase A:
- App skeleton design
- Business / review / delivery flow canon

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
- CommonOS consumer folders
- static HTML/CSS/JS minimum app
- smoke check passed

### Current

Phase I:
- API client mock wiring
- AIWorkerOS bridge mock wiring
- local queue event wiring
- policy submit mock
- pipeline start mock
- pipeline snapshot mock
- queue sync mock
- event log rendering

### Remaining

Phase J:
- offline-first queue UX deepening
- retry / conflict presentation
- CommonOS sync presenter mapping

Phase K:
- review board / delivery board UI completion

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

## 3. Phase I Scope

Create and wire:

- src/events/aicmEvents.js
- src/api/client.js
- src/bridge/aiworkerBridge.js
- src/queue/localQueue.js
- src/state/aicmState.js
- assets/js/app.js
- index.html action controls

## 4. Out of Scope

Phase I does not:

- apply RLS
- modify DB
- call live AIWorkerOS
- implement production auth
- implement real service route
- deploy

## 5. Completion Conditions

- API mock functions exist
- AIWorkerOS bridge mock functions exist
- local queue can add and sync items
- UI buttons trigger mock actions
- event log renders
- smoke check passes
