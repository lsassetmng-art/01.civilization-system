# AICompanyManager Review Action Local Wiring Canon

phase: Phase DA-DD
status: review-action-local-wiring-canon
storage_key: AICM_PHASE_AN_SPLIT_ADD_EDIT_STATE
real_api_connect: false

## 1. 方針

review actions を LocalRepository 経由へ接続する。

## 2. 接続対象

- approve-review
- reject-review
- request-review-revision

## 3. 接続方法

DOM capture phase で review action を捕捉する。

理由:
- accepted UI の private handleAction を直接壊さない
- company / department / organization / ledger / csv wiring と同じ方式で段階移行する
- 問題時は前bundleへ戻しやすい

## 4. review_item_id取得

以下の順で取得する。

1. clicked button data-review-id
2. clicked button data-review_item_id
3. clicked button data-id
4. sessionStorage AICM_PENDING_REVIEW_ITEM_ID
5. localStorage内の先頭review item

## 5. status mapping

approve-review:
- 承認済み

reject-review:
- 差し戻し

request-review-revision:
- 修正待ち

## 6. reload方針

review action 成功後は画面状態を安定させるため reload する。

## 7. 禁止

- real API connect
- DB connect
- RLS apply
- live AIWorkerOS call
- MutationObserver
- top-level tab追加
