# AICompanyManager Basic Write Rollback Coverage Push Scope Canon

phase: Phase JE-JH
status: basic-write-rollback-coverage-push-scope-canon

## 1. push対象

Design repo:
- /data/data/com.termux/files/home/01.civilization-system
- scope: 07.applications/03.business-app/AICompanyManager

Implementation repo:
- /data/data/com.termux/files/home/03.civilization-development
- scope: 03.business-os/AICompanyManager

## 2. 含めるもの

Design:
- basic write rollback coverage summary docs
- persistent write Boss OK required gate
- review / CSV / workflow / live AIWorkerOS separation gate
- no-connect gate
- missing report repair docs
- JE-JH push docs
- meta evidence

Implementation:
- company / department / organization / ledger rollback smoke servers
- rollback smoke marker JS files
- JA-JD coverage summary check
- JE-JH final verify test
- logs

## 3. push対象外

- unrelated apps
- unrelated OS folders
- temporary response JSON under HOME/.tmp
- persistent DB write execution
- review action execution
- CSV import execution
- workflow start execution
- live AIWorkerOS call
