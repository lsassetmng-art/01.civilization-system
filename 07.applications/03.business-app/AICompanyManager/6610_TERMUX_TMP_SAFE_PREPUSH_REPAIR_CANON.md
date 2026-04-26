# AICompanyManager Termux Tmp Safe Pre-Push Repair Canon

phase: Phase DI-DL repair
status: tmp-safe-prepush-repair-canon

## 1. Termux tmp rule

Do not write temporary files to:

- /tmp

Use:

- $HOME/.tmp

## 2. Pipeline rule

Use:

- set -euo pipefail

Reason:
- tee pipeline中のテスト失敗を握りつぶさないため

## 3. Result rule

If test fails:
- do not write PASS completion report
- output FAIL
- stop

If test passes:
- write repair completion report
- output PASS

## 4. Safety

This repair does not execute:

- DB WRITE
- RLS APPLY
- psql
- REAL API CONNECT
- LIVE AIWORKEROS CALL
- GIT PUSH
