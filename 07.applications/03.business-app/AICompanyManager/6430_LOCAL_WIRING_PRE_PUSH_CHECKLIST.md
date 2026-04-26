# AICompanyManager Local Wiring Pre-Push Checklist

phase: Phase DH
status: local-wiring-pre-push-checklist

## 1. push前チェック

確認すること:
- accepted UI が維持されている
- index.html は script 1本
- final local bundle が読み込まれている
- company wiring marker がある
- department wiring marker がある
- organization wiring marker がある
- ledger wiring marker がある
- csv wiring marker がある
- review wiring marker がある
- workflow wiring marker がある
- ApiRepositoryStub が disabled のまま
- real API network が enabled になっていない
- MutationObserver が使われていない
- DB WRITE が実行されていない
- RLS APPLY が実行されていない
- psql が実行されていない
- LIVE AIWORKEROS CALL が実行されていない

## 2. 次の候補

Phase DI-DL:
- local wiring final acceptance
- git status整理
- pre-push validation
- push sync

## 3. まだ行わないこと

- DB適用
- RLS適用
- 実API接続
- live AIWorkerOS call
