# AICompanyManager Ledger Action Local Wiring Canon

phase: Phase CS-CV
status: ledger-action-local-wiring-canon
storage_key: AICM_PHASE_AN_SPLIT_ADD_EDIT_STATE
real_api_connect: false

## 1. 方針

ledger actions を LocalRepository 経由へ接続する。

## 2. 接続対象

- add-ledger-row
- save-ledger-row
- delete-ledger-row

## 3. 接続方法

DOM capture phase で ledger action を捕捉する。

理由:
- accepted UI の private handleAction を直接壊さない
- company / department / organization wiring と同じ方式で段階移行する
- 問題時は前bundleへ戻しやすい

## 4. company_id / department_id取得

company_id:
1. company-select
2. sessionStorage AICM_CURRENT_COMPANY_ID
3. sessionStorage AICM_PENDING_COMPANY_ID
4. localStorage内の先頭company

department_id:
1. department-select
2. sessionStorage AICM_PENDING_DEPARTMENT_ID
3. company内の先頭department

ledger_row_id:
1. edit-ledger-id
2. clicked button data-ledger-id
3. sessionStorage AICM_PENDING_LEDGER_ROW_ID

## 5. reload方針

ledger action 成功後は画面状態を安定させるため reload する。

## 6. 禁止

- real API connect
- DB connect
- RLS apply
- MutationObserver
- top-level tab追加
