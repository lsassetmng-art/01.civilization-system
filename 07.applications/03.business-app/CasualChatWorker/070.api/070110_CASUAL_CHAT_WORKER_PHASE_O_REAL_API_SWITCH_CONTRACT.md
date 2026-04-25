# CasualChatWorker Phase O Real API Switch Contract

status: active
generated_at: 20260425_224836

## 1. Required Runtime Config

Frontend runtime config must expose only safe values:

- apiMode
- apiBaseUrl
- appCode
- serviceCode
- allowRealApi
- canUseRealApi()

## 2. Required API Base URL

The API base URL must point to the approved WorkerRentalCore backend.

It must not be:

- a DB URL
- a Supabase connection string
- a secret
- an ERP DB URL

## 3. Expected Endpoints

- GET /api/v1/business/worker-rental/service/catalog
- GET /api/v1/business/worker-rental/entitlement/balance
- POST /api/v1/business/worker-rental/quote
- POST /api/v1/business/worker-rental/confirm
- GET /api/v1/business/worker-rental/history

## 4. Required Rejection

- 150-minute quote must be rejected.

