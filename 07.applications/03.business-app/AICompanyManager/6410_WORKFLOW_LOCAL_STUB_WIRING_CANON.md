# AICompanyManager Workflow Local Stub Wiring Canon

phase: Phase DE
status: workflow-local-stub-wiring-canon
storage_key: AICM_PHASE_AN_SPLIT_ADD_EDIT_STATE
real_api_connect: false
live_aiworkeros_call: false

## 1. 方針

workflow start は local stub として接続する。

## 2. 接続対象

- start-workflow
- start-ai-workflow
- run-workflow

## 3. 接続方法

DOM capture phase で workflow action を捕捉する。

## 4. 実行内容

workflow start local stub は以下だけを行う。

- company_id / department_id / ledger_row_id を取得
- LocalRepository.startWorkflow を呼べる場合は呼ぶ
- 結果を sessionStorage に保存する
- live AIWorkerOS call はしない
- DBには書かない
- APIには送らない

## 5. sessionStorage

保存候補:
- AICM_LAST_WORKFLOW_RUN

## 6. 禁止

- real API connect
- live AIWorkerOS call
- DB connect
- RLS apply
- MutationObserver
- top-level tab追加
