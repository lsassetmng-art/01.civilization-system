# ============================================================
# AICompanyManager API Bridge Queue Wiring Design
# ============================================================

app_name: AICompanyManager
display_name: AI企業運営アプリ
category: 03.business-app
phase: Phase I
status: api-bridge-queue-wiring-designed

## 1. Purpose

Phase I wires the Phase H static skeleton to mock app behavior.

The purpose is to confirm:

- human policy input flow
- local queue creation
- mock API client behavior
- mock AIWorkerOS bridge behavior
- pipeline status rendering
- event log rendering
- offline-first flow shape

## 2. Implementation Root

/data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager

## 3. Runtime Model

The app runs as static HTML/CSS/JS.

State is stored in memory and localStorage for local queue demonstration.

## 4. Mock Actions

| action | module | purpose |
|---|---|---|
| submitPolicy | AICM_API_CLIENT | create policy submit response |
| startPipeline | AICM_AIWORKER_BRIDGE | create mock AIWorkerOS pipeline run |
| pullSnapshot | AICM_AIWORKER_BRIDGE | return pipeline snapshot |
| addQueueItem | AICM_QUEUE | add local queue item |
| syncQueue | AICM_QUEUE | mark pending queue as synced |
| logEvent | AICM_EVENTS | append operation log |

## 5. Canonical Boundary

AICompanyManager owns app-side operation UI and queue meaning.

AIWorkerOS owns internal President / Manager / Leader / Worker execution.

Phase I uses mock bridge only.

## 6. DB / RLS Status

DB:
- Persona-side DB apply was performed earlier.

RLS:
- not applied.
- requires explicit Boss RLS OK / GO.
