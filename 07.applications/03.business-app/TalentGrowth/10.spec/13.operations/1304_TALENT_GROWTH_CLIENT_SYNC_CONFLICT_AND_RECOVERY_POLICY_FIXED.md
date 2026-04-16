# TALENT GROWTH CLIENT SYNC CONFLICT AND RECOVERY POLICY FIXED

status: draft-client-sync-conflict-fixed
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero

# 0. 目的
本資料は、
TalentGrowth の client sync,
conflict recovery,
network failure recovery,
draft rescue を固定するための資料である。

# 1. 想定 failure categories
- temporary offline
- unstable mobile network
- token expired during edit
- server validation failure
- lock_version conflict
- state transition invalid due to stale screen
- dependency unavailable
- duplicate submit attempt

# 2. safe recovery class

## class A: local draft rescue
対象:
- self review draft
- profile draft
- academic draft
- certification draft
- skill draft
- growth memo draft

対応:
- local persistence
- recover banner on reopen
- compare with server if available

## class B: server retry possible
対象:
- draft save
- notification read sync
- non-critical progress update

対応:
- queued retry with backoff
- explicit retry button

## class C: manual recovery required
対象:
- self review final submit
- manager review submit
- send back
- approve
- publish
- reopen
- successor update

対応:
- user must reopen latest server state
- no silent retry

# 3. duplicate submit guard
- submit endpoints send idempotency key
- repeated tap within same intent must not create duplicate effect
- UI disables submit button while pending
- on timeout, client queries latest state before offering retry

# 4. conflict detection fields
minimum candidates:
- lock_version
- updated_at
- evaluation_status_code
- current_step_owner_role_code

# 5. conflict UI rule
conflict screen must show:
- local unsynced summary
- server latest summary
- conflict reason
- allowed actions

allowed actions examples:
- discard local
- replace local draft with server
- copy local text to clipboard-like staging
- reopen form with latest server baseline

# 6. token expiry during edit
- preserve local draft
- prompt re-authentication
- resume after token refresh if possible
- do not discard unsaved text

# 7. validation failure recovery
- keep draft intact
- highlight exact fields
- show stable error code
- allow retry after correction

# 8. dependency failure recovery
examples:
- MBO unavailable
- file store unavailable
- AI unavailable

policy:
- degrade gracefully where possible
- core evaluation editing should continue if optional dependency fails
- optional sections show partial unavailable state
- hard failure only when essential submit dependency is broken

# 9. app restart recovery
on next launch:
- restore unresolved local drafts
- restore pending safe retry queue
- clear expired volatile UI state
- rerun stale-sensitive fetch on governance screens

# 10. recovery audit stance
- server-side retries and failures logged
- conflict-causing submit failures logged where possible
- client-local rescue does not overwrite server audit truth

# 11. 結論
TalentGrowth の sync / conflict / recovery policy は、
draft rescue を強くしつつ、
governance actions では自動化しすぎない方針で固定する。

中核原則は以下である。
- protect user input
- protect server authority
- never auto-finalize after offline uncertainty
