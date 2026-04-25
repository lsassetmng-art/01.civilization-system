# CasualChatWorker Phase N Persona DB Boundary Gate

status: active
app_name: CasualChatWorker
display_name: 雑談ワーカー

## 1. Current Phase

- current_phase: Phase N
- frontend_real_mode: disabled
- DB target when executed: Persona-side DB
- DB env when executed: PERSONA_DATABASE_URL

## 2. Schema Gate

Before any DB-connected dry-run or real endpoint validation, confirm:

- business owns contract/payment/entitlement/session facts
- aiworker owns AI worker entity/series/personality/safety canon
- cx22073jw owns smalltalk/topic material
- CommonOS owns presentation only

## 3. Phase O STOP

Phase O remains STOP if any are true:

- DATABASE_URL is used
- ERP DB is targeted
- frontend contains DB secret
- AIWorkerOS canon is copied into business
- CX22073JW material is copied into business as truth
- CommonOS absorbs pricing/contract truth

