# AICompanyManager API Readonly Mode Candidate Canon

phase: Phase FB
status: api-readonly-mode-candidate-canon
real_api_connect: false

## 1. API readonly mode の目的

API readonly mode は、DB/RLS適用後に UI を壊さず、読み取りだけをAPI化するための最初の接続モード。

## 2. readonly対象

Allowed readonly endpoints candidate:
- bootstrap
- company list
- company detail
- department list
- organization tree
- task ledger list
- review item list

## 3. readonlyで禁止する操作

Forbidden:
- create company
- update company
- delete/archive company
- create department
- update department
- delete/archive department
- create organization
- update organization
- delete/archive organization
- ledger write
- csv import
- review action
- workflow start
- live AIWorkerOS call

## 4. mode

Candidate mode:
- api_readonly_candidate

Current active mode:
- local

## 5. fallback

If readonly API fails:
- keep LocalRepository active
- show fallback warning
- do not erase local state
- do not auto-write server state

## 6. 現在の判定

api_readonly_candidate:
- DESIGNED ONLY

real_api_connect:
- STOP
