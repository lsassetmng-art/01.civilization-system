# AICompanyManager Live AIWorkerOS Call Separation Gate

phase: Phase GY
status: live-aiworkeros-call-separation-gate
live_aiworkeros_call: false

## 1. 現在の判定

live AIWorkerOS call:
- STOP

## 2. 分離方針

live AIWorkerOS call は readonly API connect とは別工程にする。

## 3. live AIWorkerOS call に必要な明示

Required phrase:
- live AIWorkerOS OK

## 4. live前に必要なもの

Required:
- workflow API review
- audit log review
- timeout/retry plan
- human approval boundary
- backend-only call boundary
- no browser direct call

## 5. readonly API phaseで禁止

Forbidden in readonly API phase:
- Manager auto breakdown live call
- Leader assignment live call
- Worker deliverable live call
- review automation live call
