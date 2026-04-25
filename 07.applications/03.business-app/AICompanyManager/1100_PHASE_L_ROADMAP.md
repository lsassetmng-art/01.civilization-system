# ============================================================
# AICompanyManager Phase L Roadmap
# ============================================================

app_name: AICompanyManager
display_name: AI企業運営アプリ
category: 03.business-app
phase: Phase L
status: server-route-bridge-placeholder-started
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

Phase K:
- review board UI
- delivery board UI
- human approval panel
- return request panel

### Current

Phase L:
- real server route design
- AIWorkerOS bridge integration boundary
- API payload adapter
- runtime mode config
- live route placeholder
- mock remains default

### Remaining

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

## 3. Phase L Scope

Create:

- server route design
- payload adapter design
- runtime config
- server route client placeholder
- AIWorkerOS bridge placeholder using adapter
- server-routes documentation
- server route placeholder JS
- smoke check update

## 4. Out of Scope

Phase L does not:

- apply RLS
- modify DB
- expose secrets
- call live AIWorkerOS
- use service role key in client
- deploy server routes

## 5. Completion Conditions

- server route boundary is documented
- payload adapter exists
- runtime config exists
- server route client placeholder exists
- AIWorkerOS bridge can remain mock by default
- smoke check passes
