# AICompanyManager final remaining work and boundary

## Completed
The implementation smoke chain is complete through:
- persistent writes
- CSV import
- workflow start
- live AIWorkerOS call
- smoke-safe RLS apply and verify

## Remaining future work

### 1. Strict tenant RLS
Current RLS is smoke-safe.
Future strict RLS should define:
- JWT claim structure
- company_id claim
- department/organization scope
- admin/manager/leader/worker role mapping
- service role bypass rules
- audit-safe read/write separation

### 2. Production endpoint hardening
The live AIWorkerOS endpoint should be hardened with:
- production Authorization requirement
- idempotency persistence
- request log
- replay-safe response
- 409 conflict semantics
- structured error codes
- audit log

### 3. UI integration
Current smoke validates backend behavior.
Future UI should surface:
- persistent write status
- CSV import preview/result
- workflow start status
- live AIWorkerOS accepted/completed state
- RLS enabled state

### 4. Full API route stabilization
Future API work should stabilize:
- exact request/response contracts
- typed validation
- error handling
- retry behavior
- local fallback behavior

## Boundaries
Do not treat this phase as:
- final strict security
- production tenant isolation
- full UI acceptance
- full AI worker production orchestration

It is the completed smoke chain foundation.
