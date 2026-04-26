# AICompanyManager Phase DI-DL Pre-Push Repair Roadmap

phase: Phase DI-DL repair
status: prepush-repair-started
db_apply: false
rls_apply: false
real_api_connect: false
live_aiworkeros_call: false
git_push: false

## 目的

Phase DI-DL pre-push check の /tmp Permission denied を修正する。

## 原因

Termux環境では /tmp が書き込み不可になる場合がある。

前回FAIL箇所:
- /tmp/aicm_prev_test.log: Permission denied

## 修正方針

- /tmp を使わない
- $HOME/.tmp 配下へ一時ログを出す
- set -euo pipefail を使う
- 内部テストFAIL時に最終PASSを出さない
- DB/API/AIWorkerOS/Push は実行しない

## 完了条件

- repaired pre-push check がPASS
- previous Phase DE-DH test を $HOME/.tmp 経由で実行できる
- final local bundle の受入条件がPASS
