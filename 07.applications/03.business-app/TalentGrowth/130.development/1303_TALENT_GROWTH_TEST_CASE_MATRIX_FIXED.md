# TALENT GROWTH TEST CASE MATRIX FIXED

status: draft-test-case-matrix-fixed
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero

# 0. 目的
本資料は、
TalentGrowth の主要機能に対する
test case matrix を固定し、
実装・QA・リグレッションの基準を作るための資料である。

# 1. matrix観点
- happy path
- validation error
- permission error
- invalid state transition
- concurrency conflict
- offline / reconnect
- audit log
- notification generation
- export / batch side effect

# 2. phase A core cases

## T-A-001 employee dashboard basic read
target:
- GET /api/v1/employee/dashboard
checks:
- score fields present
- alert fields present
- wrong scope denied
- cache invalidation after publish works

## T-A-002 certification create / renew
target:
- POST /api/v1/employee-certifications
- POST /api/v1/employee-certifications/{id}/renewal
checks:
- create succeeds with valid certification_id
- invalid date range rejected
- renewal updates expiry state
- expiry alert event generated when applicable

## T-A-003 skill create / update / evidence
target:
- POST /api/v1/employee-skills
- PATCH /api/v1/employee-skills/{id}
- POST /api/v1/employee-skills/{id}/evidences
checks:
- duplicate skill conflict rejected
- proficiency range validated
- evidence add reflected in count
- permission scope enforced

## T-A-004 self review save / submit
target:
- self-review/save
- self-review/submit
checks:
- local draft rescue possible
- submit requires correct state
- submit creates event and notification
- submit blocks when required fields missing

## T-A-005 manager review save / submit
target:
- manager-review/save
- manager-review/submit
checks:
- only team manager can act
- score range validation works
- lock_version conflict handled
- submit updates queue state

## T-A-006 send back
target:
- send-back
checks:
- send back reason required
- target_role_code validated
- employee sees return reason
- audit append exists

## T-A-007 role requirement create / update
target:
- POST/PATCH role-requirements
checks:
- weight sum validation works
- invalid effective range rejected
- HR only write
- diff view shows changes

## T-A-008 growth plan create / progress
target:
- POST growth-plans
- POST growth-plans/{id}/progress
checks:
- action min 1 validation
- progress percent 0..100
- plan visible to employee and manager
- dashboard invalidation works

## T-A-009 approval / publish baseline
target:
- approve
- publish
checks:
- invalid state rejected
- approved before publish respected
- publish creates result-ready notification
- snapshots refresh triggered

## T-A-010 calibration save baseline
target:
- calibration/save
checks:
- active calibration session required
- reason mandatory
- large delta warning path exists
- calibration log append exists

## T-A-011 audit search
target:
- audit-logs/search
checks:
- HR allowed
- admin limited scope only
- date range validation works
- major actions searchable

## T-A-012 RLS baseline
target:
- representative tables/endpoints
checks:
- employee_self sees own data only
- manager sees team only
- HR sees company scope
- executive aggregate-first
- admin no raw full evaluation by default

# 3. phase B cases

## T-B-001 academics CRUD
checks:
- create/update/read scope
- file linkage optional
- validation rules enforced

## T-B-002 career / achievement CRUD
checks:
- date range valid
- goal_linked_flag behavior valid
- HR override path valid

## T-B-003 HR review queue
checks:
- queue includes manager-submitted only
- counts reflected on HR dashboard
- invalid state hidden or rejected

## T-B-004 skill evidence verification
checks:
- only verifier role can verify
- verified flag persists
- audit append created

## T-B-005 distribution analytics
checks:
- denominator correct
- generated_at shown
- zero denominator -> N/A
- role/cycle filters respected

## T-B-006 evaluator bias analytics
checks:
- bias index formula stable
- scope comparison correct
- refresh job output consumable

## T-B-007 MBO linkage degraded mode
checks:
- MBO available path
- MBO unavailable partial state
- core review continues without fatal break

# 4. phase C cases

## T-C-001 role-fit candidate extraction
checks:
- target_role filter required
- inaccessible org rejected
- candidate scores returned
- stale snapshot handling clear

## T-C-002 successor candidate management
checks:
- HR create/update allowed
- employee self denied
- executive read allowed
- risk note protected

## T-C-003 9box analytics
checks:
- axes displayed correctly
- filter consistency
- generated_at visible

## T-C-004 training ROI analytics
checks:
- reporting currency applied
- division by zero -> N/A
- monthly refresh reflects new data

## T-C-005 exports
checks:
- async create works
- status polling works
- ready notification sent
- failed export gives stable error

## T-C-006 admin settings
checks:
- role update policy valid
- locale/currency settings persist
- restricted caches purged on role downgrade

# 5. phase D cases

## T-D-001 AI draft generation
checks:
- allowed roles only
- disabled feature rejected
- reference log created
- no final decision auto-change

## T-D-002 AI bias check
checks:
- HR only
- result advisory only
- calibration board linkage non-authoritative

## T-D-003 reopen governance
checks:
- published only
- reason mandatory
- audit append mandatory
- stale client rejected correctly

# 6. offline / sync cases

## T-X-001 draft rescue after app restart
checks:
- self review draft restored
- certification draft restored
- sync status visible

## T-X-002 token expiry during edit
checks:
- local draft preserved
- re-auth path available
- no data loss

## T-X-003 conflict handling
checks:
- stale lock_version rejected
- conflict UI shows local vs server
- no auto-finalization

# 7. notification / batch cases

## T-X-004 outbox publish
checks:
- event created on business action
- published status transitions
- dead letter path when repeated failure

## T-X-005 notification delivery
checks:
- in-app always generated
- push/email retry path
- dedupe works

## T-X-006 expiry scan job
checks:
- expiring soon threshold respected
- expired detection respected
- duplicate alerts suppressed

## T-X-007 snapshot refresh jobs
checks:
- publish triggers snapshot
- nightly job idempotent enough
- analytics consume latest valid snapshot

# 8. regression minimum set
release blocking minimum:
- T-A-002
- T-A-004
- T-A-005
- T-A-006
- T-A-008
- T-A-009
- T-A-011
- T-A-012
- T-X-001
- T-X-003
- T-X-004
- T-X-005

# 9. 結論
TalentGrowth の test case matrix は、
phase別に happy path と failure path をセットで固定し、
governance 系の regressions を release blocker として扱う。
