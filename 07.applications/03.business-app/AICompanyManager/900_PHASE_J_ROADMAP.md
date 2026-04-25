# ============================================================
# AICompanyManager Phase J Roadmap
# ============================================================

app_name: AICompanyManager
display_name: AI企業運営アプリ
category: 03.business-app
phase: Phase J
status: offline-queue-ux-started
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

### Current

Phase J:
- offline-first queue UX
- retry presentation
- conflict presentation
- CommonOS sync presenter mapping
- queue failure simulation
- queue retry simulation
- queue conflict resolution simulation

### Remaining

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

## 3. Phase J Scope

Create and wire:

- queue failure state
- retry action
- conflict state
- conflict resolution action
- CommonOS sync presenter mapping
- queue summary panel
- smoke check update

## 4. Out of Scope

Phase J does not:

- apply RLS
- modify DB
- call live AIWorkerOS
- implement production auth
- deploy

## 5. Completion Conditions

- queue can mark failed
- queue can retry failed
- queue can mark conflict
- queue can resolve conflict
- CommonOS sync presenter mapping exists
- UI shows queue summary
- smoke check passes
