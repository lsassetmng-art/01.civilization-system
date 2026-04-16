# TALENT GROWTH SCREEN LOADING REFRESH SYNC RULE FIXED

status: draft-screen-refresh-sync-fixed
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero

# 0. 目的
本資料は、
TalentGrowth の主要画面ごとに、
loading,
refresh,
prefetch,
sync,
offline availability
を固定するための資料である。

# 1. screen rule notation
- loading_mode
- refresh_mode
- prefetch_mode
- offline_read
- offline_edit
- submit_rule

# 2. global screens

## TG-GLOBAL-002 ホーム / ナビゲーションハブ
loading_mode:
- skeleton
refresh_mode:
- auto on open
- manual pull-to-refresh on mobile
prefetch_mode:
- notifications count
- role dashboard summary
offline_read:
- limited cached last state allowed
offline_edit:
- none
submit_rule:
- not applicable

## TG-GLOBAL-003 通知センター
loading_mode:
- list skeleton
refresh_mode:
- auto periodic light refresh
- explicit refresh available
prefetch_mode:
- none
offline_read:
- cached notifications allowed
offline_edit:
- mark read queue locally allowed
submit_rule:
- read sync on reconnect

# 3. employee screens

## TG-EMP-001 employee dashboard
loading_mode:
- card skeleton
refresh_mode:
- auto on open
- refetch after major mutations
prefetch_mode:
- growth plan summary
- expiring certification summary
offline_read:
- cached last snapshot allowed
offline_edit:
- none
submit_rule:
- not applicable

## TG-EMP-002 my profile
loading_mode:
- basic detail skeleton
refresh_mode:
- manual refresh available
prefetch_mode:
- none
offline_read:
- cached read allowed
offline_edit:
- draft allowed
submit_rule:
- online required for save

## TG-EMP-003 academic history
loading_mode:
- list + form lazy load
refresh_mode:
- manual
prefetch_mode:
- none
offline_read:
- cached read allowed
offline_edit:
- draft allowed
submit_rule:
- online required

## TG-EMP-004 certification management
loading_mode:
- list skeleton
refresh_mode:
- auto after renewal
- manual otherwise
prefetch_mode:
- certification masters
offline_read:
- cached read allowed
offline_edit:
- draft allowed
submit_rule:
- renewal record online required

## TG-EMP-005 skill inventory
loading_mode:
- list skeleton
refresh_mode:
- auto after evidence add
prefetch_mode:
- skill masters
offline_read:
- cached read allowed
offline_edit:
- draft allowed
submit_rule:
- online required for server save

## TG-EMP-008 self review
loading_mode:
- detail load with section placeholders
refresh_mode:
- refetch on focus if stale
prefetch_mode:
- evaluation sheet summary
- linked evidence summary
offline_read:
- cached last draft allowed
offline_edit:
- yes, local draft strong
submit_rule:
- final submit online only

## TG-EMP-009 my evaluation result
loading_mode:
- result summary skeleton
refresh_mode:
- refetch on open
prefetch_mode:
- linked gap analysis summary
offline_read:
- last published result cache allowed if policy permits
offline_edit:
- none
submit_rule:
- not applicable

## TG-EMP-010 gap analysis
loading_mode:
- summary skeleton
refresh_mode:
- refetch after publish or target change
prefetch_mode:
- recommendations
offline_read:
- cached read allowed
offline_edit:
- none
submit_rule:
- not applicable

## TG-EMP-011 growth plan
loading_mode:
- plan summary then action list
refresh_mode:
- auto after progress update
prefetch_mode:
- linked recommendations
offline_read:
- cached read allowed
offline_edit:
- progress memo draft allowed
submit_rule:
- progress sync online required

## TG-EMP-012 recommendation center
loading_mode:
- list skeleton
refresh_mode:
- auto after accept/reject
prefetch_mode:
- none
offline_read:
- cached read allowed
offline_edit:
- accept/reject intent may queue locally? no
submit_rule:
- online required

## TG-EMP-014 career simulation
loading_mode:
- action-triggered calculation loading
refresh_mode:
- rerun on explicit trigger
prefetch_mode:
- none
offline_read:
- cached previous simulation allowed
offline_edit:
- scenario draft allowed
submit_rule:
- simulation execution online required

# 4. manager screens

## TG-MGR-001 manager dashboard
loading_mode:
- summary skeleton
refresh_mode:
- auto on open
- periodic light refresh
prefetch_mode:
- review queue first page
offline_read:
- limited cached summary allowed
offline_edit:
- none
submit_rule:
- not applicable

## TG-MGR-002 team member list
loading_mode:
- paginated list skeleton
refresh_mode:
- manual and filter-triggered
prefetch_mode:
- top visible member summaries
offline_read:
- cached read allowed
offline_edit:
- none
submit_rule:
- not applicable

## TG-MGR-005 review input
loading_mode:
- blocking fetch of latest state before edit if stale
refresh_mode:
- refetch on enter / resume
prefetch_mode:
- evidence summaries
- latest comments
offline_read:
- last read cache only
offline_edit:
- draft allowed cautiously
submit_rule:
- online required
notes:
- stale write must be blocked by lock_version

## TG-MGR-006 one-on-one support
loading_mode:
- summary first, sections progressive
refresh_mode:
- manual prominent
prefetch_mode:
- growth plan
- latest evaluation result
- linked mbo goals
offline_read:
- cached summary allowed
offline_edit:
- memo draft allowed
submit_rule:
- growth update online required

## TG-MGR-007 growth plan review
loading_mode:
- plan summary + action list
refresh_mode:
- auto after plan mutation
prefetch_mode:
- linked recommendations
offline_read:
- cached read allowed
offline_edit:
- manager note draft allowed
submit_rule:
- online required

# 5. HR screens

## TG-HR-001 HR dashboard
loading_mode:
- summary cards skeleton
refresh_mode:
- auto on open
- manual refresh visible
prefetch_mode:
- review queue count
- calibration queue count
offline_read:
- no guaranteed offline
offline_edit:
- none
submit_rule:
- not applicable

## TG-HR-002 cycle control
loading_mode:
- list/detail skeleton
refresh_mode:
- explicit after action
prefetch_mode:
- active cycle summary
offline_read:
- cached read optional
offline_edit:
- none
submit_rule:
- online required

## TG-HR-003 role requirement management
loading_mode:
- list + detail split load
refresh_mode:
- manual / after save
prefetch_mode:
- family/role/grade masters
offline_read:
- cached read allowed
offline_edit:
- draft allowed
submit_rule:
- online required

## TG-HR-007 calibration board
loading_mode:
- latest server fetch required
refresh_mode:
- refetch on enter and after each save
prefetch_mode:
- evaluation summaries only
offline_read:
- no
offline_edit:
- no
submit_rule:
- online required strictly

## TG-HR-008 evaluator bias analysis
loading_mode:
- heavy analytics loading
refresh_mode:
- manual prominent
prefetch_mode:
- current cycle baseline only
offline_read:
- cached analytics allowed if generated_at shown
offline_edit:
- none
submit_rule:
- not applicable

## TG-HR-009 distribution analytics
loading_mode:
- heavy analytics loading
refresh_mode:
- manual
prefetch_mode:
- last used filter set
offline_read:
- cached analytics allowed if generated_at shown
offline_edit:
- none
submit_rule:
- not applicable

## TG-HR-013 audit log viewer
loading_mode:
- query-based loading, no blind preload
refresh_mode:
- user-triggered
prefetch_mode:
- none
offline_read:
- no
offline_edit:
- no
submit_rule:
- export request online required

# 6. executive screens

## TG-EXE-001 executive dashboard
loading_mode:
- summary skeleton
refresh_mode:
- manual visible
prefetch_mode:
- org talent summary
offline_read:
- cached last summary allowed if timestamp shown
offline_edit:
- none
submit_rule:
- not applicable

## TG-EXE-003 successor pipeline
loading_mode:
- heavy summary load
refresh_mode:
- manual prominent
prefetch_mode:
- none
offline_read:
- cached summary allowed if timestamp shown
offline_edit:
- none
submit_rule:
- not applicable

## TG-EXE-004 investment and growth view
loading_mode:
- heavy analytics loading
refresh_mode:
- manual
prefetch_mode:
- last used filter bundle
offline_read:
- cached analytics allowed if timestamp shown
offline_edit:
- none
submit_rule:
- export online required

# 7. admin screens

## TG-ADM-001 user / role management
loading_mode:
- paginated list skeleton
refresh_mode:
- manual after write
prefetch_mode:
- none
offline_read:
- no
offline_edit:
- no
submit_rule:
- online required

## TG-ADM-005 integration settings
loading_mode:
- settings detail load
refresh_mode:
- explicit only
prefetch_mode:
- none
offline_read:
- no
offline_edit:
- no
submit_rule:
- online required

# 8. sync indicator policy
以下の画面では visible sync status を表示する。

- self review
- certification management
- skill inventory
- growth plan
- manager review input

sync labels:
- saved locally
- syncing
- synced
- sync failed
- conflict detected

# 9. stale data indicator policy
以下の画面では generated_at / last_refreshed_at を表示する。

- distribution analytics
- 9box
- training ROI
- executive dashboard
- successor pipeline

# 10. logout / role change rule
- logout clears sensitive draft cache
- company switch clears incompatible cache
- role downgrade clears restricted cached data
- token refresh failure disables sync and shows reconnect state

# 11. 結論
TalentGrowth の画面ごとの loading / refresh / sync rule は、
画面の機微性と更新頻度に応じて分けて固定する。

中核原則は以下である。
- employee draft-friendly
- manager review freshness-heavy
- HR governance online-strict
- executive analytics timestamp-visible
