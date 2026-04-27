# AICompanyManager Browser Fetch Permission Gate

phase: Phase GY
status: browser-fetch-permission-gate
browser_fetch: false

## 1. 現在の判定

browser fetch:
- NOT EXECUTED

## 2. 許可条件

Required:
- Boss implementation OK
- API接続 OK
- backend readonly endpoint ready
- LocalRepository rollback plan ready
- UI response mapping reviewed
- no write endpoint in first fetch

## 3. 初回fetch

First browser fetch:
- GET /api/aicm/v1/bootstrap

## 4. fetch失敗時

Fallback:
- LocalRepository active
- localStorage preserved
- show fallback warning
- no auto server write
- no workflow start

## 5. 禁止

Browser must not:
- call service role
- call Supabase privileged DB directly
- call live AIWorkerOS directly
- start write API in readonly phase
