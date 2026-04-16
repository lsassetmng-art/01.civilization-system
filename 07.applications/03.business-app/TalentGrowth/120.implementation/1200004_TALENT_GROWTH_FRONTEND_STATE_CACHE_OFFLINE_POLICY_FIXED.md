# TALENT GROWTH FRONTEND STATE CACHE OFFLINE POLICY FIXED

status: draft-frontend-state-fixed
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero

# 0. 目的
本資料は、
TalentGrowth の frontend state,
cache,
offline,
sync,
optimistic update の方針を固定するための資料である。

前提:
- iPhone / Android / PC / tablet 対応
- employee flow は mobile 比重が高い
- manager / HR / executive は online consistency を強く要求する
- 評価確定や校正は機微性が高く、offline first を乱用しない

# 1. 基本原則
- source of truth is server
- local state is UI convenience
- cache is read optimization, not authority
- offline edit is selective
- approval / calibration / publish は online required
- audit-impacting write は server-confirmed only
- optimistic UI は低リスク更新だけに限定する

# 2. state layer 分割

## 2-1. session state
内容:
- auth session
- current user
- role set
- company scope
- locale
- reporting currency preference
- current device type
保存:
- secure persistent storage
更新頻度:
- low

## 2-2. navigation state
内容:
- current route
- selected filters
- current tab
- selected employee
- selected evaluation sheet
保存:
- volatile + optional route query
更新頻度:
- high

## 2-3. server query cache
内容:
- dashboard responses
- list responses
- detail responses
- analytics responses
保存:
- memory first
- optional disk cache for mobile
更新頻度:
- medium to high

## 2-4. local draft state
内容:
- self review draft
- profile edit draft
- academic edit draft
- certification add/update draft
- skill edit draft
- growth progress note draft
保存:
- local persistent storage allowed
更新頻度:
- high

## 2-5. ephemeral UI state
内容:
- dialog open/close
- loading spinner
- submit pending
- toast message
- inline validation result
保存:
- memory only

# 3. cache category rule

## 3-1. short-lived cache
対象:
- notifications
- home
- employee dashboard
TTL:
- 1 to 5 minutes

## 3-2. medium-lived cache
対象:
- employee profile
- academics
- certifications
- skills
- growth plans
TTL:
- 5 to 15 minutes

## 3-3. strict no-stale or near-no-stale
対象:
- evaluation sheet during active editing
- manager review input
- calibration board
- approval status
- audit log viewer
TTL:
- fetch on open / explicit refresh
notes:
- stale cache reuseを避ける

## 3-4. analytics cache
対象:
- distribution analytics
- 9box
- training ROI
TTL:
- 15 to 60 minutes
notes:
- generated_at を画面表示する

# 4. offline policy by function

## 4-1. offline allowed
- self review draft local save
- profile draft local save
- academic draft local save
- certification draft local save
- skill draft local save
- growth progress memo draft
- notification read queue local pending allowed

## 4-2. offline limited
- employee dashboard cached read
- profile cached read
- certification cached read
- growth plan cached read

## 4-3. offline not allowed
- self review final submit
- manager review submit
- send back
- calibration save
- approve
- publish
- reopen
- audit export
- successor update
- admin setting change

# 5. device별 stance

## smartphone
- draft persistence strong
- cached read useful
- background sync lightweight
- network recovery auto retry for draft sync

## tablet
- manager review cache moderate
- one-on-one support data prefetch useful
- approval actions still online required

## PC
- authoritative read prioritized
- heavy analytics cached but explicit refresh visible
- admin / HR actions always online

# 6. draft persistence policy

## draft key concept
local draft key:
- company_id
- employee_id
- screen_code
- entity_id or temp_key

examples:
- comp_01:emp_01:TG-EMP-008:esheet_01
- comp_01:emp_01:TG-EMP-004:new-cert-001

## draft metadata
- draft_key
- draft_version
- last_local_saved_at
- last_server_saved_at
- dirty_flag
- sync_status_code

sync_status_code:
- LOCAL_ONLY
- SAVE_PENDING
- SYNCED
- SYNC_FAILED
- CONFLICT

# 7. sync policy

## 7-1. local save
- immediate local save for editable forms
- debounce allowed for frequent typing
- local save must not require network

## 7-2. server save
- explicit save button for high-value forms
- optional background save for low-risk drafts
- final submit always explicit

## 7-3. reconnect sync
- only draft-class entities auto-sync candidate
- approval-class entities never auto-submit
- conflict requires user-visible resolution

# 8. optimistic update policy

## allowed optimistic update
- notification read/unread
- local draft saved marker
- growth action progress percent display before confirmation, if clearly pending
- filter / sort / selection UI

## not allowed optimistic finalization
- evaluation final score
- review submit result
- approval / publish status
- calibration result
- successor status
- export completed state

# 9. conflict policy

## likely conflict cases
- same evaluation sheet edited on two devices
- manager and HR sequential updates around state boundary
- reopened sheet while stale client still editing
- certification renewed on another device

## resolution rule
- server version wins as base truth
- client compares lock_version / updated_at
- conflicting local draft becomes CONFLICT
- user sees:
  - server latest summary
  - local unsynced summary
  - merge or discard options where safe

## no-merge zones
- approval actions
- calibration actions
- publish / reopen actions
- audit sensitive fields

# 10. refresh policy

## auto refresh
- notifications
- manager review queue
- HR review queue
- dashboard counters

## manual refresh prominent
- calibration board
- audit log viewer
- distribution analytics
- 9box
- investment analysis

## refetch on focus
- evaluation sheet detail
- manager review input
- growth plan detail during collaboration

# 11. preload / prefetch policy

## employee flow
prefetch candidates:
- dashboard -> self review summary
- dashboard -> expiring certifications
- dashboard -> current growth plan

## manager flow
prefetch candidates:
- review queue -> first evaluation sheet detail
- team member list -> member summary cards
- one-on-one -> linked growth plan

## HR flow
prefetch candidates:
- HR dashboard -> review queue counts
- calibration board -> target evaluation sheet summary
- distribution analytics -> top filters baseline set

# 12. cache invalidation rules

## invalidate on self review submit
invalidate:
- employee dashboard
- evaluation sheet detail
- manager review queue
- notifications

## invalidate on manager review submit
invalidate:
- manager dashboard
- HR review queue
- evaluation sheet detail
- notifications

## invalidate on approve / publish
invalidate:
- employee dashboard
- my evaluation result
- growth recommendations
- role-fit candidates
- snapshots dependent views

## invalidate on certification renewal
invalidate:
- certification list
- expiring certification list
- employee dashboard
- qualification-related alerts

## invalidate on growth progress update
invalidate:
- growth plan detail
- employee dashboard
- manager dashboard summary

# 13. loading / empty / error states

## loading
- skeleton preferred for dashboard and lists
- blocking spinner only for submit / approve / publish

## empty
- must distinguish "no data yet" from "filtered to zero"
- offer next action when meaningful

## error
- inline retry for read failures
- modal or banner for write failures
- draft preservation on write failure mandatory where possible

# 14. local storage rule
persistent local storage allowed for:
- session essentials
- safe drafts
- filter preferences
- locale / currency preference

persistent local storage not allowed for:
- full audit export files by default
- highly sensitive raw comments cache beyond active session
- break-glass data
- privileged executive raw datasets

# 15. security stance for cache
- secure storage for tokens and user identity
- redact sensitive comment preview in lock screen push
- clear sensitive draft cache on logout
- company switch clears incompatible cache
- role downgrade forces cache purge for restricted data

# 16. recommended frontend modules
- session-store
- route-state-store
- query-cache-layer
- local-draft-store
- sync-orchestrator
- conflict-resolver
- notification-store
- analytics-cache-layer

# 17. phase rollout

## phase A
- session state
- route state
- query cache baseline
- self review local draft
- certification / skill draft persistence
- cache invalidation core

## phase B
- reconnect sync for safe drafts
- conflict handling baseline
- team / HR queue refresh tuning
- analytics cache tuning

## phase C
- tablet optimized prefetch
- executive heavy analytics cache
- export status polling optimization

## phase D
- advanced offline heuristics
- intelligent prefetch
- adaptive cache TTL

# 18. 結論
TalentGrowth の frontend state / cache / offline policy は、
read optimization と authority を分離し、
draft-friendly だが approval-safe な構成で固定する。

中核原則は以下である。
- server truth
- selective offline
- no offline finalization
- visible sync status
- explicit conflict handling
