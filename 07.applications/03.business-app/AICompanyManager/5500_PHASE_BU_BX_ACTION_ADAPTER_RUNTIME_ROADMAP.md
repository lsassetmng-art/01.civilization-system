# AICompanyManager Phase BU-BX Action Adapter Runtime Roadmap

phase: Phase BU-BX
status: action-adapter-runtime-started
db_apply: false
rls_apply: false
real_api_connect: false
live_aiworkeros_call: false

## 目的

accepted UI を壊さず、次の repository wiring に備えて action adapter と repository runtime を追加する。

## 今回まとめる範囲

Phase BU:
- action adapter skeleton

Phase BV:
- repository runtime / default repository selector

Phase BW:
- one-script bundle update

Phase BX:
- accepted UI regression check / no-connect gate

## 現在位置

完了済み:
- accepted UI
- repository skeleton
- repository-ready one-script bundle

今回:
- action adapter runtime をbundleへ同梱

## 実行しないこと

- DB WRITE
- RLS APPLY
- psql
- real API connect
- live AIWorkerOS call
- APIRepository実通信
- DB migration
- accepted UIの大規模置換

## 完了条件

- aicm-action-adapter.js がある
- aicm-repository-runtime.js がある
- new one-script bundle がある
- index.html がnew bundle 1本読み
- accepted UI文言が維持される
- APIRepository は disabled のまま
- 検証PASS
