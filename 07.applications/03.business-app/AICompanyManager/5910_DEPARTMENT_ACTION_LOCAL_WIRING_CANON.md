# AICompanyManager Department Action Local Wiring Canon

phase: Phase CK-CN
status: department-action-local-wiring-canon
storage_key: AICM_PHASE_AN_SPLIT_ADD_EDIT_STATE
real_api_connect: false

## 1. 方針

department actions を LocalRepository 経由へ接続する。

## 2. 接続対象

- add-department
- save-department
- delete-department

## 3. 接続方法

DOM capture phase で department action を捕捉する。

理由:
- accepted UI の private handleAction を直接壊さない
- company wiring と同じ方式で段階移行できる
- 問題時は前bundleへ戻しやすい

## 4. company_id取得

部門追加画面には company-select がない場合があるため、以下の順で company_id を取得する。

1. company-select
2. sessionStorage AICM_CURRENT_COMPANY_ID
3. sessionStorage AICM_PENDING_COMPANY_ID
4. localStorage内の先頭company

## 5. reload方針

department action 成功後は画面状態を安定させるため reload する。

## 6. 禁止

- real API connect
- DB connect
- RLS apply
- MutationObserver
- top-level tab追加
