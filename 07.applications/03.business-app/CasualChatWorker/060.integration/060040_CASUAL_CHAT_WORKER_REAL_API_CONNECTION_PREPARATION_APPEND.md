# CasualChatWorker Real API Connection Preparation Integrated Append

status: active
phase: Phase O
app_name: CasualChatWorker
display_name: 雑談ワーカー

## 1. Integrated Decision

CasualChatWorker now has a real API connection preparation layer.

This layer keeps mock mode and real mode separated.

## 2. Mode Policy

- mock mode: localStorage mock API remains available
- real mode: API adapter calls backend endpoint candidates
- runtime frontend never uses DB env variables
- DB access belongs to BusinessOS backend only

## 3. WorkerRentalCore dependency

CasualChatWorker can use real mode only after:

- WorkerRentalCore DB apply completes
- verify SQL passes
- backend endpoint implementation exists
- API payload gap check passes

## 4. Safety

Even in real mode:

- CasualChatWorker max duration remains 120 minutes
- monthly ticket remains shortest-contract-duration entitlement
- Lover remains pseudo-romantic entertainment
- AIWorkerOS remains read-only
- CX22073JW remains read-only

