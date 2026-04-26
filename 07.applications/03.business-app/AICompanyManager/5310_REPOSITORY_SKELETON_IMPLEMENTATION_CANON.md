# AICompanyManager Repository Skeleton Implementation Canon

phase: Phase BM-BP
status: repository-skeleton-implementation-canon
api_implementation: false
ui_swap: false

## 1. 方針

既存 accepted UI を壊さない。

今回追加する repository skeleton は、次Phaseで UI 接続するための準備物。

## 2. 追加ファイル

- assets/js/aicm-api-client.js
- assets/js/aicm-state-adapter.js
- assets/js/aicm-repository.js
- assets/js/aicm-local-repository.js
- assets/js/aicm-api-repository-stub.js

## 3. index.html

今回 index.html は差し替えない。

理由:
- accepted UI の画面OKを維持する
- one script policy を維持する
- repository 接続は次の段階で安全に実施する

## 4. repositoryの役割

AicmRepository:
- interface定義
- method名固定

AicmLocalRepository:
- localStorageを使う
- 現在のmock状態と互換

AicmApiRepositoryStub:
- endpoint名を固定
- 実fetchはしない
- no-connect guardを持つ

AicmStateAdapter:
- API payloadとUI stateの変換候補

AicmApiClient:
- fetch wrapper候補
- 今回は実通信禁止
