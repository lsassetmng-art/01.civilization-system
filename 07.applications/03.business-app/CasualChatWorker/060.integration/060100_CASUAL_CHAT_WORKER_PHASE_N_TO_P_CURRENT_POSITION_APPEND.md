# CasualChatWorker Phase N to Phase P Current Position Append

status: active
app_name: CasualChatWorker
display_name: 雑談ワーカー

## 1. Integrated Decision

CasualChatWorker is currently between completed backend preparation and real mode validation.

The app is not yet in frontend real mode.

## 2. Current Safe State

- frontend real mode disabled
- mock/local mode usable
- non-production rollback dry-run prepared but not auto-executed
- live payload gap checker prepared but not auto-executed
- live confirm separately gated

## 3. Required Before Real Mode

- non-production rollback dry-run PASS
- live payload gap check PASS
- auth/session policy PASS
- no frontend DB secrets
- no frontend psql
- 150-minute quote rejected
- Boss approval

## 4. Boundary

- business owns WorkerRentalCore contract/payment/entitlement/usage truth
- aiworker owns worker catalog, series tendency, style features, safety control
- cx22073jw owns smalltalk and topic material
- CommonOS owns UI presentation
- ERP is not v1 direct linkage

