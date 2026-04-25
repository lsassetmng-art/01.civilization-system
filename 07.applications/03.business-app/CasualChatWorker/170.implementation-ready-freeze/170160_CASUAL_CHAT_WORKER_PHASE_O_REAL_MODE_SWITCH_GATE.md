# CasualChatWorker Phase O Real Mode Switch Gate

status: active
generated_at: 20260425_224836

## 1. Gate

Phase O is started, but real mode is not automatically enabled.

## 2. Required Switch Conditions

- Boss approval expressed by CCW_APPROVE_PHASE_O_REAL_MODE_SWITCH=1
- approved backend URL in CCW_REAL_API_BASE_URL
- frontend secret scan PASS
- real mode preflight PASS
- payload contract remains CasualChatWorker / casual_chat_worker
- 120-minute cap remains
- shortest_contract_duration remains monthly free ticket rule

## 3. Runtime Values After Approved Switch

- apiMode: real
- allowRealApi: true
- apiBaseUrl: approved backend URL
- appCode: CasualChatWorker
- serviceCode: casual_chat_worker

## 4. Rollback Values

- apiMode: mock
- allowRealApi: false
- apiBaseUrl: empty string

## 5. STOP

Stop if any are true:

- DATABASE_URL is placed in frontend
- PERSONA_DATABASE_URL is placed in frontend
- psql appears in frontend
- service_role appears in frontend
- supabase_key appears in frontend
- backend URL is empty
- Lover safety boundary is weakened
- CasualChatWorker max exceeds 120 minutes

