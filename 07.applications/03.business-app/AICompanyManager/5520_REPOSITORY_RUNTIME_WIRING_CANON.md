# AICompanyManager Repository Runtime Wiring Canon

phase: Phase BV
status: repository-runtime-wiring-canon
real_api_connect: false

## 1. 目的

LocalRepository / ApiRepositoryStub の選択口を固定する。

## 2. default

現在の既定:
- LocalRepository

理由:
- accepted UIは localStorage mock が正本
- 実DB/API接続は未承認
- APIRepository は stub のみ

## 3. runtime責務

- repository生成
- runtime mode 管理
- no-network guard
- action adapter生成
- repository availability check

## 4. mode候補

local:
- AicmLocalRepository

api_stub:
- AicmApiRepositoryStub
- real network disabled

api:
- 将来用
- Boss implementation OK 後

## 5. 今回の結論

runtimeは作るが、accepted UIの動作は維持する。
