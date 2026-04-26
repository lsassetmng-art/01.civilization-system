# AICompanyManager One-Script Repository Ready Bundle Canon

phase: Phase BS
status: one-script-repository-ready-bundle-canon

## 1. 正本

index.html は JS を1本だけ読む。

今回の正本:
- assets/js/phase-bq-bt-repository-ready-ui.js
- assets/css/phase-bq-bt-repository-ready-ui.css

## 2. bundle順序

1. aicm-api-client.js
2. aicm-state-adapter.js
3. aicm-repository.js
4. aicm-local-repository.js
5. aicm-api-repository-stub.js
6. accepted UI JS

## 3. 期待状態

- window.AICM が存在する
- AicmApiClient が存在する
- AicmStateAdapter が存在する
- AicmRepository が存在する
- AicmLocalRepository が存在する
- AicmApiRepositoryStub が存在する
- accepted UI がそのまま動く

## 4. 禁止

- 複数script化しない
- real API通信しない
- DB接続しない
- accepted UIのトップ構成を変えない
