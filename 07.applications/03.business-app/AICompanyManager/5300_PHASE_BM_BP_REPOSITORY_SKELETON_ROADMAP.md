# AICompanyManager Phase BM-BP Repository Skeleton Roadmap

phase: Phase BM-BP
status: repository-skeleton-started
db_apply: false
rls_apply: false
api_implementation: false
ui_swap: false

## 目的

実API接続前に adapter / repository skeleton を実装置き場へ追加する。

## 今回まとめる範囲

Phase BM:
- API client skeleton

Phase BN:
- state adapter skeleton

Phase BO:
- LocalRepository implementation

Phase BP:
- ApiRepository stub and no-connect gate

## 現在位置

完了済み:
- 画面構成OK
- DB/RLS integrated review
- API payload contract
- adapter/repository precheck

今回:
- implementation skeleton only

## 実行しないこと

- DB WRITE
- RLS APPLY
- psql
- 実API接続
- accepted UI差し替え
- LIVE AIWORKEROS CALL

## 完了条件

- aicm-api-client.js がある
- aicm-state-adapter.js がある
- aicm-repository.js がある
- aicm-local-repository.js がある
- aicm-api-repository-stub.js がある
- index.html は accepted UI のまま
- 検証PASS
