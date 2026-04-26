# AICompanyManager Organization Action Local Wiring Canon

phase: Phase CO-CR
status: organization-action-local-wiring-canon
storage_key: AICM_PHASE_AN_SPLIT_ADD_EDIT_STATE
real_api_connect: false

## 1. 方針

organization actions を LocalRepository 経由へ接続する。

## 2. 接続対象

- add-organization
- save-organization
- delete-organization

## 3. 接続方法

DOM capture phase で organization action を捕捉する。

理由:
- accepted UI の private handleAction を直接壊さない
- company / department wiring と同じ方式で段階移行する
- 問題時は前bundleへ戻しやすい

## 4. company_id / department_id取得

組織追加・変更画面では company-select が無い場合があるため、以下の順で取得する。

company_id:
1. company-select
2. sessionStorage AICM_CURRENT_COMPANY_ID
3. sessionStorage AICM_PENDING_COMPANY_ID
4. localStorage内の先頭company

department_id:
1. org-add-department
2. department-select
3. sessionStorage AICM_PENDING_DEPARTMENT_ID
4. company内の先頭department

organization_id:
1. organization-select
2. sessionStorage AICM_PENDING_ORGANIZATION_ID
3. department内の先頭organization

## 5. reload方針

organization action 成功後は画面状態を安定させるため reload する。

## 6. 禁止

- real API connect
- DB connect
- RLS apply
- MutationObserver
- top-level tab追加
