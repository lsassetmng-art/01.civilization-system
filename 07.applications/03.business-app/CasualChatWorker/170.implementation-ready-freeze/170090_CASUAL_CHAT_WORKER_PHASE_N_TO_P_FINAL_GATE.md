# CasualChatWorker Phase N to P Final Gate

status: real-mode-disabled
app_name: CasualChatWorker
display_name: 雑談ワーカー

## 1. Gate Status

Real mode is disabled.

## 2. Phase N Gate

Required to pass Phase N:

- rollback dry-run PASS or explicit decision to defer
- live payload gap check PASS or explicit decision to defer
- no DB secret in frontend
- no psql in frontend
- no ERP DATABASE_URL
- CasualChatWorker max 120 minutes confirmed
- shortest_contract_duration rule confirmed

## 3. Phase O Gate

Required to start Phase O:

- Boss approval
- approved apiBaseUrl
- backend endpoint available
- auth/session available
- payload gap PASS
- 150-minute rejection PASS

## 4. Phase P Gate

Required to complete Phase P:

- final acceptance PASS
- final handoff generated
- known risks listed
- rollback path documented

## 5. STOP

Stop if:

- DATABASE_URL is used
- frontend contains DB secret
- live confirm is run against production without approval
- Lover safety boundary is weakened
- AIWorkerOS canon is duplicated into business
- CX22073JW material is copied as business truth

