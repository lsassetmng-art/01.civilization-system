# AICompanyManager CSV Action Local Wiring Canon

phase: Phase CW-CZ
status: csv-action-local-wiring-canon
storage_key: AICM_PHASE_AN_SPLIT_ADD_EDIT_STATE
real_api_connect: false

## 1. 方針

CSV actions を LocalRepository 経由へ接続する。

## 2. 接続対象

- preview-csv
- import-csv

## 3. 接続方法

DOM capture phase で CSV action を捕捉する。

理由:
- accepted UI の private handleAction を直接壊さない
- company / department / organization / ledger wiring と同じ方式で段階移行する
- 問題時は前bundleへ戻しやすい

## 4. CSV preview

preview-csv:
- textarea / input / file から CSV text を取得
- CSV header を検証
- valid / invalid を sessionStorage に保存
- DBには書かない

## 5. CSV import

import-csv:
- sessionStorage の preview rows を取得
- valid row だけ LocalRepository.saveLedgerRow で台帳へ保存
- invalid row は保存しない
- import結果を sessionStorage に保存

## 6. CSV header

canonical:
- deliverable_name,task_name,work_type,status,priority,due_date,reference_files,supplemental_materials,note

## 7. 禁止

- real API connect
- DB connect
- RLS apply
- MutationObserver
- top-level tab追加
