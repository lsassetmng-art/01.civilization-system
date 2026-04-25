# ============================================================
# AICompanyManager Server Route Bridge Integration Design
# ============================================================

app_name: AICompanyManager
display_name: AI企業運営アプリ
category: 03.business-app
phase: Phase L
status: server-route-bridge-integration-designed

## 1. Purpose

Phase L defines the boundary between the browser app and future server routes.

AICompanyManager must not call AIWorkerOS internal endpoints directly from browser code.

Browser app:
- creates app-side payload
- calls AICompanyManager server route
- receives normalized app response
- updates UI / queue / events

Server route:
- validates auth
- checks ownership
- converts app payload to AIWorkerOS bridge payload
- calls AIWorkerOS internal route
- stores or syncs app-side operation records
- returns app-safe response

AIWorkerOS:
- owns President / Manager / Leader / Worker internals
- owns AI execution
- owns AI growth and reasoning
- returns bridge-safe output only

## 2. Runtime Mode

Default mode:
- mock

Future mode:
- live

The static app must remain safe when no server route exists.

## 3. Browser-Side Files

- src/config/runtimeConfig.js
- src/api/payloadAdapter.js
- src/api/serverRouteClient.js
- src/bridge/aiworkerBridge.js

## 4. Server Route Placeholder

Placeholder folder:

- server-routes

Files:

- server-routes/README.md
- server-routes/business-ai-company-manager-routes.md
- server-routes/aiworker-company-pipeline-route.placeholder.js

## 5. Server Route Boundary

Browser route candidate:

- POST /api/v1/business/ai-company-manager/pipeline/start
- GET /api/v1/business/ai-company-manager/pipeline/{pipeline_run_id}/snapshot
- POST /api/v1/business/ai-company-manager/reviews/{review_id}/return
- POST /api/v1/business/ai-company-manager/approvals/{approval_id}/approve
- POST /api/v1/business/ai-company-manager/deliveries/{delivery_id}/accept

AIWorkerOS internal route candidate:

- POST /internal/v1/aiworker/company-pipeline/runs
- GET /internal/v1/aiworker/company-pipeline/runs/{aiworker_run_ref}/snapshot
- POST /internal/v1/aiworker/company-pipeline/runs/{aiworker_run_ref}/revision-requests

## 6. Secrets Rule

No secret is placed in browser files.

Forbidden in client:
- service role key
- database URL
- AIWorkerOS internal secret
- worker internal prompt
- private reasoning log

## 7. Canonical Rule

AICompanyManager browser code only handles app-safe operation payloads.
AIWorkerOS internal bridge must be mediated by a trusted server route.
