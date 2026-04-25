# ============================================================
# AICompanyManager Final Handoff
# ============================================================

app_name: AICompanyManager
display_name: AI企業運営アプリ
category: 03.business-app
phase: Phase N
status: final-handoff-created
owner: Boss
prepared_by: Zero

## 1. Summary

AICompanyManager is a BusinessOS-side app for operating an AI company through a human-facing interface.

The core business flow is:

1. Human enters policy.
2. President creates business plan.
3. Manager breaks plan into domains and actions.
4. Leader creates deliverables and tasks.
5. Worker executes tasks.
6. Leader reviews and returns or integrates.
7. Manager reviews.
8. President performs final review.
9. Human approves or requests revision.
10. Delivery is prepared and accepted.

## 2. Current Final State

Design:
- app skeleton design completed
- business / review / delivery flow canon completed
- DB / API / State exact design completed
- Persona-side DB apply completed
- reserved word fix completed
- RLS exact design completed
- RLS apply deferred
- implementation design completed
- integrated design regenerated

Implementation:
- BusinessOS implementation skeleton exists
- static HTML/CSS/JS app exists
- CommonOS consumer folders exist
- API client mock exists
- AIWorkerOS bridge mock exists
- local queue exists
- retry / conflict queue UX exists
- review / delivery UI exists
- payload adapter exists
- server route placeholder exists
- mock remains default

## 3. Canonical Paths

Design root:
- ~/01.civilization-system/07.applications/03.business-app/AICompanyManager

Implementation root:
- ~/03.civilization-development/03.business-os/AICompanyManager

Integrated design:
- ~/01.civilization-system/07.applications/03.business-app/AICompanyManager/00_AICOMPANYMANAGER_INTEGRATED_DESIGN.md

## 4. DB Target

Current DB target:
- PERSONA_DATABASE_URL

Important:
- Earlier DATABASE_URL apply draft should not be treated as the canonical apply route for this app.
- Persona-side correction is canonical for this app's current DB work.

## 5. Reserved Word Fix

The DB column name current_role was replaced with:

- current_role_code

Reason:
- current_role caused PostgreSQL syntax error.
- current_role_code is the canonical app-side and DB-side field.

## 6. RLS Status

RLS APPLY: DEFERRED

Reason:
- RLS OK / GO has not been explicitly given.

RLS materials exist:
- 510_PERSONA_RLS_EXACT_POLICY_DESIGN.md
- 511_PERSONA_RLS_SQL_CANDIDATE.sql
- 512_PERSONA_RLS_APPLY_GUARDED_DRAFT.sh
- 513_PERSONA_RLS_VERIFY_SQL_DRAFT.sql
- 514_PERSONA_ACCESS_CONTROL_MATRIX.md
- 600_PHASE_G_GATE_ROADMAP.md

## 7. Live Bridge Status

LIVE AIWORKEROS CALL: NOT EXECUTED

Current runtime:
- mock

Future live route:
- server-mediated only
- no direct browser call to AIWorkerOS internal endpoint
- no secrets in browser

## 8. Next Recommended Work

Option A:
- RLS apply after explicit Boss RLS OK / GO.

Option B:
- Continue implementation hardening with live server route scaffolding while keeping mock default.

Option C:
- Package acceptance bundle and move to another chat.
