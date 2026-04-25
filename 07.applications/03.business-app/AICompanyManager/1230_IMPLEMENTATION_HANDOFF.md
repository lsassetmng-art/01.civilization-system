# ============================================================
# AICompanyManager Implementation Handoff
# ============================================================

app_name: AICompanyManager
display_name: AI企業運営アプリ
category: 03.business-app
phase: Phase N
status: implementation-handoff-created

## 1. Implementation Root

/data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager

## 2. Key Files

| file | purpose |
|---|---|
| index.html | static app shell |
| assets/css/app.css | app styling |
| assets/js/app.js | UI renderer and action wiring |
| src/config/runtimeConfig.js | runtime mode and safe config |
| src/api/client.js | app API mock client |
| src/api/payloadAdapter.js | app payload adapter |
| src/api/serverRouteClient.js | future server route client |
| src/bridge/aiworkerBridge.js | mock/default AIWorkerOS bridge boundary |
| src/queue/localQueue.js | local queue behavior |
| src/events/aicmEvents.js | event log helper |
| src/actions/reviewDeliveryActions.js | review / delivery mock actions |
| src/mock/mockData.js | mock state |
| _commonos/sync/syncPresenter.js | CommonOS sync presenter mapping |
| server-routes/README.md | future route boundary |
| server-routes/business-ai-company-manager-routes.md | route candidates |
| server-routes/aiworker-company-pipeline-route.placeholder.js | future route placeholder |
| tests/smoke_check.sh | smoke test |
| tests/acceptance_check.sh | Phase N acceptance test |

## 3. Runtime Rule

Default:
- mock

Live:
- only through trusted server route
- no browser-side secrets
- no direct AIWorkerOS internal call

## 4. Safety Status

DB WRITE in Phase N:
- NOT EXECUTED

RLS APPLY in Phase N:
- NOT EXECUTED

LIVE AIWORKEROS CALL in Phase N:
- NOT EXECUTED
