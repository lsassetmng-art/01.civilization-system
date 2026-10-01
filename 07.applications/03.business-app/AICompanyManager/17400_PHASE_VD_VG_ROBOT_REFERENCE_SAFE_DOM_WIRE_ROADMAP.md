# AICompanyManager Phase VD-VG robot reference safe DOM wire roadmap

## Phase
- VD-VG

## Recovery reason
Previous actual UI wire attempts failed and restored JS from backup.

## New strategy
Do not replace existing UI functions.
Use a small guarded DOM insertion script:
- try/catch protected
- MutationObserver protected
- duplicate insertion prevented
- node --check before commit
- backup restore on failure

## Reference cards
Show robot reference information near:
- Presidentロボット
- Managerロボット設定
- Leaderロボット設定
- Workerロボット配置

## Safety
- DB READ ONLY
- DB DDL not executed
- API write not executed
- RLS apply not executed
- quantity consumption not executed
