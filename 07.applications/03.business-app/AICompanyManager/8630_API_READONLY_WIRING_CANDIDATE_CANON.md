# AICompanyManager API Readonly Wiring Candidate Canon

phase: Phase GI
status: api-readonly-wiring-candidate-canon
browser_fetch: false
real_api_connect: false

## 1. 目的

ApiRepository readonly wiring candidate を作り、将来の readonly connect 時に使う interface を固定する。

## 2. Candidate file

- assets/js/aicm-api-readonly-wiring-candidate.js

## 3. 現時点の制限

Candidate:
- not loaded by index.html
- does not call fetch
- does not switch active repository
- does not erase localStorage
- does not start workflow
- does not call live AIWorkerOS

## 4. Future mode

Future mode:
- api_readonly_candidate

Active mode now:
- local

## 5. First read target

First future target:
- GET /api/aicm/v1/bootstrap

## 6. Forbidden

Still forbidden:
- write API
- review action API
- csv import API
- workflow start API
- live AIWorkerOS call
