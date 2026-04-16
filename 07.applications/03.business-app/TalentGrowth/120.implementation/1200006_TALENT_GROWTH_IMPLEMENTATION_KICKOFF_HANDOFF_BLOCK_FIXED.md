# TALENT GROWTH IMPLEMENTATION KICKOFF HANDOFF BLOCK FIXED

status: kickoff-handoff-fixed
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero

# 0. purpose
本資料は、
次チャットまたは次実装フェーズで
そのまま開始指示に使える kickoff handoff を固定するための資料である。

# 1. start point
開始対象:
- phase A core evaluation foundation

# 2. first deliverables
最初に作るもの:
- DDL migration baseline
- phase A seed / mock data
- API contract stubs
- employee dashboard read
- certification CRUD baseline
- skill CRUD baseline
- self review save / submit
- manager review save / submit / send back
- role requirement CRUD baseline
- growth plan baseline
- audit search baseline
- outbox / in-app notification baseline
- RLS baseline

# 3. strict guardrails
- no publish without approval
- no offline final submit
- no direct notification send bypassing outbox
- no missing audit on score-changing write
- no admin blanket raw access
- no hidden state transition
- no duplicated final submit effect
- no common component design in this implementation kickoff

# 4. recommended execution order
1. DDL migration baseline
2. minimum seed / mock dataset
3. auth context / me / home
4. employee dashboard
5. certifications
6. skills
7. self review
8. manager review
9. role requirement
10. growth plan
11. audit search
12. outbox / notification
13. RLS hardening
14. phase A regression set

# 5. must-pass before phase A done
- self review submit works
- manager review submit works
- send back works
- growth progress works
- approve path baseline works
- audit trail searchable
- in-app notification visible
- RLS boundary holds

# 6. blockers to watch first
- lock_version conflict not enforced
- wrong role seeing raw data
- score formula mismatch
- missing outbox event
- stale review queue not invalidated
- draft loss on app restart
- duplicate submit creating duplicate actions

# 7. handoff message block
implementation opening message:
TalentGrowth phase A core evaluation foundation を開始する。
共通部品はこのチャットでは扱わない。
まず DDL baseline, minimum seed, API stub, employee dashboard,
certification, skill, self review, manager review, role requirement,
growth plan, audit, outbox notification, RLS baseline の順で実装する。
publish without approval, offline final submit, admin blanket raw access は禁止。
lock_version conflict, audit_trace_id, outbox append, RLS boundary を最初から入れる。

# 8. conclusion
TalentGrowth の implementation kickoff は、
phase A を end-to-end で成立させる実装開始ブロックとして固定する。
