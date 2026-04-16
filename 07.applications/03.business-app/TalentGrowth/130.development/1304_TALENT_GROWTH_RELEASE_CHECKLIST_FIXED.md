# TALENT GROWTH RELEASE CHECKLIST FIXED

status: draft-release-checklist-fixed
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero

# 0. 目的
本資料は、
TalentGrowth の release 前確認項目を固定し、
評価・校正・監査の事故を防ぐための checklist を定義するための資料である。

# 1. release gate 基本原則
- phase scope が閉じていること
- DB / API / UI / policy / jobs が整っていること
- regression minimum set が通ること
- audit / notification / batch がつながっていること
- locale / currency / role 別に最低限確認すること

# 2. schema / migration checks
- required tables created
- required indexes created
- migration rollback note exists
- no destructive unexpected change
- default values and nullable assumptions verified

# 3. API checks
- endpoint inventory target completed
- validation / error code stable
- auth / scope / RLS verified
- request_id emitted
- audit_trace propagation verified

# 4. UI checks
- target phase screens reachable
- loading / empty / error states verified
- sync status visible where required
- conflict handling UI verified
- device variants checked for target screens

# 5. workflow checks
- self review -> manager review -> send back / approve flow works
- growth plan create / progress works
- certification renewal works
- publish -> result visible works
- reopen governance works if in scope

# 6. analytics / formula checks
- KPI formulas verified against sample data
- score formulas verified against reference calculation
- rank mapping thresholds verified
- generated_at shown on analytics pages
- zero denominator handling verified

# 7. notification / batch checks
- outbox event generated
- notification created
- in-app delivery visible
- retry and failure path logged
- expiry scan works
- snapshot refresh works
- export job completion/failure notification works if in scope

# 8. security / governance checks
- employee_self scope verified
- manager team scope verified
- HR company scope verified
- executive aggregate-first verified
- admin raw evaluation overreach not enabled by default
- sensitive data caching restrictions verified
- logout clears sensitive drafts

# 9. locale / currency checks
- ja at minimum verified
- additional locale target verified if in scope
- reporting currency display consistent
- export locale and currency outputs verified

# 10. observability checks
- API errors logged
- batch jobs logged
- notification failures logged
- audit search can trace representative flows
- export job status visible

# 11. release blocker list
release must stop if:
- approval invalid state possible
- send back loses reason
- publish without audit trail
- RLS leak found
- duplicate submit produces duplicate finalization
- notification storm or duplicate dedupe failure
- snapshot formula materially wrong
- exported sensitive data scope broken

# 12. rollout checks
- feature flags set correctly
- optional modules off by default if unfinished
- background jobs scheduled
- retry thresholds configured
- alert / escalation channels configured

# 13. post-release early watch
first watch items:
- review queue stuck count
- notification failure count
- outbox dead letter count
- lock_version conflict spike
- export failure rate
- RLS denial anomaly rate

# 14. 結論
TalentGrowth の release checklist は、
通常のUI確認だけでなく、
approval,
audit,
notification,
snapshot,
RLS
を release gate の中核として固定する。
