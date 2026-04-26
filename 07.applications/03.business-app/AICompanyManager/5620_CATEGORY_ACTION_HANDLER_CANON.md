# AICompanyManager Category Action Handler Canon

phase: Phase BZ
status: category-action-handler-canon
real_api_connect: false

## 1. 目的

accepted UI の handleAction をカテゴリ別handlerへ分ける準備を行う。

## 2. category

- companyActions
- departmentActions
- organizationActions
- ledgerActions
- csvActions
- reviewActions
- workflowActions

## 3. 今回の位置づけ

今回作るhandlerは skeleton。

accepted UI の既存 handleAction はまだ置換しない。

## 4. 次の接続順

1. company actions
2. department actions
3. organization actions
4. ledger actions
5. csv actions
6. review actions
7. workflow actions

## 5. 禁止

- 画面構成変更禁止
- real API connect禁止
- DB/RLS適用禁止
- MutationObserver禁止
