# AICompanyManager Backend API Runtime Contract Canon

phase: Phase GO
status: backend-api-runtime-contract-canon

## 1. Runtime candidate root

Backend API candidate root:
- /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/backend-api/aicm/v1

Runtime contract candidate:
- /data/data/com.termux/files/home/03.civilization-development/03.business-os/AICompanyManager/backend-api/aicm/v1/runtime-contract-candidate.js

## 2. Runtime方針

AICompanyManager backend API は、Web API込みWeb完結方式の backend layer として扱う。

Responsibilities:
- request validation
- session/auth handoff
- readonly response shaping
- future DB read boundary
- future RPC boundary
- future AIWorkerOS boundary

## 3. 現時点の禁止

Runtime candidate must not:
- listen on a port
- connect DB
- load secrets
- call AIWorkerOS
- execute network request
- change index.html

## 4. Current state

real API connect:
- false

backend DB connect:
- false

live AIWorkerOS call:
- false
