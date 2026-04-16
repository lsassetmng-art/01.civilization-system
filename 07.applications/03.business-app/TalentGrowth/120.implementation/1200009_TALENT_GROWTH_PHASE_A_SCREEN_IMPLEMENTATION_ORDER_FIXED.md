# TALENT GROWTH PHASE A SCREEN IMPLEMENTATION ORDER FIXED

status: draft-phase-a-screen-implementation-order-fixed
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero

# 0. purpose
本資料は、
TalentGrowth phase A の screen 実装順を固定するための資料である。

# 1. rule
- read-first but workflow-complete
- dashboard only で止めない
- submit / send back / audit / notification までつながる順に進める

# 2. implementation order
1. home / role context
2. employee dashboard
3. certification management
4. skill inventory
5. self review
6. manager review queue
7. manager review input
8. role requirement management
9. growth plan
10. notifications
11. audit log viewer baseline
12. HR dashboard baseline
13. calibration board baseline

# 3. screen done definition
each screen is done only when:
- read works
- write works if applicable
- validation visible
- error path visible
- scope boundary holds
- cache invalidation works
- audit/outbox side effects connected where applicable

# 4. critical joins
- self review submit -> manager review queue
- manager submit -> HR queue / dashboard
- send back -> employee screen + notification
- certification renewal -> dashboard alert refresh
- growth progress -> dashboard refresh
- score-changing write -> audit searchable

# 5. conclusion
phase A は、
employee start -> manager workflow -> HR baseline -> audit/notification closure
の順で screen 実装を進める。
