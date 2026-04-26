# AICompanyManager Pre-Push Validation Canon

phase: Phase DJ-DL
status: pre-push-validation-canon
git_push: false

## 1. pre-pushで確認すること

Required:
- index.html exists
- final bundle JS exists
- final bundle CSS exists
- final bundle loaded from index
- index script count = 1
- accepted UI strings exist
- all local wiring markers exist
- ApiRepositoryStub disabled marker exists
- no allowNetwork true
- no MutationObserver
- no large files over 100MB in AICompanyManager scope
- git status readable for design repo
- git status readable for implementation repo

## 2. DB/RLS/API禁止

This phase must not execute:
- DB WRITE
- RLS APPLY
- psql
- real API connect
- live AIWorkerOS call
- git push

## 3. 次の候補

Phase DM-DP:
- final pre-push validation report
- git add/commit
- push sync
- final push verify

ただし、pushは次Phaseで明示的に実行する。
