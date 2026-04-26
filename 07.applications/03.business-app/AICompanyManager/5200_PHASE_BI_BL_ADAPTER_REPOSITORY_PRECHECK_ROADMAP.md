# AICompanyManager Phase BI-BL Adapter / Repository Precheck Roadmap

phase: Phase BI-BL
status: adapter-repository-precheck-started
db_apply: false
rls_apply: false
api_implementation: false

## 目的

実API実装へ進む前に、現在のmock UIとAPI contractの差分、frontend adapter、repository interface、cache/offline方針を固定する。

## 今回まとめる範囲

Phase BI:
- mock UI と API contract の差分監査

Phase BJ:
- frontend adapter 設計

Phase BK:
- repository interface 設計

Phase BL:
- cache / offline 方針と実装前NO APPLY gate

## 現在位置

完了済み:
- 画面構成OK
- DB境界固定
- DDL refined draft
- RLS exact design
- DB/RLS integrated review package
- API payload contract

今回:
- 実API接続前のadapter/repository境界固定

## 実行しないこと

- DB WRITE
- RLS APPLY
- psql実行
- 実API実装
- LIVE AIWORKEROS CALL
- migration適用

## 完了条件

- mock UI/API contract差分監査がある
- frontend adapter設計がある
- repository interface設計がある
- cache/offline方針がある
- 実装前NO APPLY gateがある
- 検証PASS
