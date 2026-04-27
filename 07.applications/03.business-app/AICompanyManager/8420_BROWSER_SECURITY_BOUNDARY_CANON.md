# AICompanyManager Browser Security Boundary Canon

phase: Phase FZ
status: browser-security-boundary-canon

## 1. ブラウザで許可

Allowed in browser:
- UI rendering
- localStorage draft
- offline queue
- readonly API call after Boss implementation OK
- user session based request
- LocalRepository fallback

## 2. ブラウザで禁止

Forbidden in browser:
- service role key
- privileged DB direct operation
- RLS bypass
- direct Owner membership creation
- direct review finalization without backend/RPC
- direct workflow execution
- direct live AIWorkerOS call
- secrets
- DB connection string

## 3. Supabase clientの扱い

Supabase client direct use may be allowed only for:
- anon/session scoped read
- RLS-protected limited read
- clearly reviewed limited write

Main recommendation:
- use backend API for AICompanyManager

## 4. 理由

AICompanyManager は以下を扱うため、backend API境界が必要。

- company common rules
- department task ledger
- review approval
- workflow start
- future AIWorkerOS call
- audit trail
