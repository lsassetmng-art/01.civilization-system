# CasualChatWorker Real Mode Switch Bundle

status: real-mode-disabled
phase: Phase S
app_name: CasualChatWorker
display_name: 雑談ワーカー

## 1. Current State

Real mode remains disabled.

## 2. Required Before Switch

- secure backend runtime config PASS
- local endpoint test PASS
- non-production DB dry-run PASS
- payload gap check PASS
- auth/session policy PASS
- frontend no-secret scan PASS
- Boss approval

## 3. Switch Rule

Frontend can switch from mock to real only by safe runtime config:

- apiMode = real
- allowRealApi = true
- apiBaseUrl set to backend endpoint
- no DB secret in frontend

## 4. Rollback

If real mode fails:

- set apiMode back to mock
- set allowRealApi=false
- keep backend logs
- do not mutate DB manually

