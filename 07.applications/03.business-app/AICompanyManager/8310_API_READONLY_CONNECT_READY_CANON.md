# AICompanyManager API Readonly Connect Ready Canon

phase: Phase FU
status: api-readonly-connect-ready-canon
real_api_connect: false
browser_fetch: false

## 1. 現在のactive状態

Active:
- index.html
- phase-de-dh-workflow-final-local-ui.js
- LocalRepository
- workflow local stub

Inactive candidates:
- aicm-api-repository-candidate.js
- aicm-repository-mode-resolver-candidate.js

## 2. readonly API connect の目的

最初のAPI接続は read-only に限定する。

Purpose:
- DB/RLS適用済みデータを読み取れるか確認
- UIがAPI由来データを描画できるか確認
- LocalRepository fallback が壊れていないか確認

## 3. readonlyで許可する範囲

Allowed:
- bootstrap read
- company read
- department read
- organization read
- ledger read
- review item read

## 4. readonlyで禁止する範囲

Forbidden:
- create/update/delete/archive
- CSV import
- review action
- workflow start
- live AIWorkerOS call
- membership direct write

## 5. 開始条件

Required before execution:
- Boss implementation OK
- API接続 OK
- readonly API OK
- endpoint implementation location fixed
- rollback to LocalRepository confirmed

## 6. 現在の判定

API readonly connect:
- STOP

reason:
- Boss implementation OK has not been recorded in this phase.
