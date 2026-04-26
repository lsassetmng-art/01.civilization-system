# AICompanyManager Company Action Local Wiring Canon

phase: Phase CG-CJ
status: company-action-local-wiring-canon
storage_key: AICM_PHASE_AN_SPLIT_ADD_EDIT_STATE
real_api_connect: false

## 1. 方針

company actions だけ LocalRepository 経由へ接続する。

## 2. 接続対象

- add-company
- save-company
- delete-company
- add-common-rules

## 3. 接続方法

DOM capture phase で company action を捕捉する。

理由:
- accepted UI の private handleAction を直接壊さない
- 既存画面構成を維持する
- 問題時は前bundleへ戻しやすい

## 4. 保存先

accepted UI が使用している localStorage key に合わせる。

key:
- AICM_PHASE_AN_SPLIT_ADD_EDIT_STATE

## 5. reload方針

company action 成功後は画面状態を安定させるため reload する。

新規会社作成時:
- 作成した会社IDを sessionStorage に保存
- reload後に会社セレクトを選択して表示

## 6. 禁止

- real API connect
- DB connect
- RLS apply
- MutationObserver
- top-level tab追加
