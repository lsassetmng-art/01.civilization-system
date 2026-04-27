# AICompanyManager Backend API Implementation Location Canon

phase: Phase GG
status: backend-api-implementation-location-canon

## 1. 実装置き場

Backend API candidate root:
- /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/backend-api/aicm/v1

Readonly bootstrap candidate:
- /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/backend-api/aicm/v1/bootstrap-readonly-candidate.js

## 2. ルーティング正本

Public endpoint target:
- GET /api/aicm/v1/bootstrap

Implementation candidate:
- backend-api/aicm/v1/bootstrap-readonly-candidate.js

## 3. 方針

AICompanyManager は Web API込みWeb完結方式を正本とする。

Browser:
- HTML/CSS/JS
- LocalRepository
- ApiRepository candidate
- offline queue / localStorage

Backend API:
- auth/session check
- payload validation
- Supabase/RPC boundary
- future service role boundary
- future AIWorkerOS boundary

Database:
- Persona側DB
- business.aicm_*
- RLS/RPC

## 4. 現時点の接続状態

real API connect:
- false

browser fetch:
- false

live AIWorkerOS call:
- false

index.html:
- backend candidateを読まない
