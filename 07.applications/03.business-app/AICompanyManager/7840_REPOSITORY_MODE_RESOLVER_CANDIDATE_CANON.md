# AICompanyManager Repository Mode Resolver Candidate Canon

phase: Phase FD
status: repository-mode-resolver-candidate-canon
real_api_connect: false

## 1. 目的

Repository mode resolver は、将来 LocalRepository / ApiRepository を切り替えるための候補部品。

## 2. 現在の active mode

Current:
- local

## 3. 予定mode

Allowed future modes:
- local
- api_readonly_candidate
- api_write_candidate
- api_with_workflow_stub
- api_with_live_aiworkeros

## 4. 今回の候補JS

Candidate JS:
- assets/js/aicm-repository-mode-resolver-candidate.js

## 5. 現在の読み込み状態

index.html:
- does not load mode resolver candidate

Reason:
- final UIを壊さない
- real API connect前に候補だけ作る

## 6. 禁止

Mode resolver candidate must not:
- call fetch
- perform network request
- change index.html
- switch active repository automatically
- enable live AIWorkerOS call
