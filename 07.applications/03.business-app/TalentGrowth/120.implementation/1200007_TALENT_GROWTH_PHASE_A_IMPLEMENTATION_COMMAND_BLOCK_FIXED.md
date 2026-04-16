# TALENT GROWTH PHASE A IMPLEMENTATION COMMAND BLOCK FIXED

status: draft-phase-a-implementation-command-fixed
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero

# 0. 目的
本資料は、
TalentGrowth phase A の実装着手時に、
次チャットでそのまま開始指示に使える command block / work order を固定するための資料である。

# 1. scope
phase A core evaluation foundation:
- DB baseline
- seed / mock
- dashboard
- certification
- skill
- self review
- manager review
- role requirement
- growth plan
- audit
- outbox / notification
- RLS

# 2. implementation order block
~~~text
【作業開始指示 / TalentGrowth phase A】

対象:
TalentGrowth phase A core evaluation foundation

今回やること:
1. phase A concrete DDL を反映
2. minimum seed / mock dataset を反映
3. API stub response を仮実装
4. employee dashboard read を実装
5. certification CRUD baseline を実装
6. skill CRUD baseline を実装
7. self review save / submit を実装
8. manager review save / submit / send back を実装
9. role requirement CRUD baseline を実装
10. growth plan create / progress を実装
11. audit search baseline を実装
12. outbox / in-app notification baseline を実装
13. RLS baseline を反映
14. release blocking minimum regression を実施

絶対条件:
- publish without approval 禁止
- offline final submit 禁止
- direct notification send bypassing outbox 禁止
- score-changing write の audit 必須
- admin blanket raw evaluation access 禁止
- invalid transition 禁止
- duplicate finalization 禁止
- common components はこの着手では扱わない

レビュー観点:
- UI / UX
- API contract
- DB / DDL
- RLS
- outbox / notification
- regression blockers
~~~

# 3. Termux execution preparation block
~~~bash
mkdir -p /data/data/com.termux/files/home/01.civilization-system/07.applications/TalentGrowth && \
echo "TalentGrowth phase A kickoff ready"
~~~

# 4. DB execution preparation block
~~~bash
psql "$DATABASE_URL" <<'SQL'
select now() as db_now;
SQL
~~~

# 5. first verification checklist
- DDL applied successfully
- minimum seed inserted
- GET /api/v1/me stub works
- GET /api/v1/employee/dashboard stub works
- self review save works
- manager review submit works
- send back works
- audit search returns representative rows
- in-app notification created
- RLS blocks unauthorized access

# 6. early stop conditions
実装を止めて見直す条件:
- state machine と API contract がずれた
- score formula と UI 表示がずれた
- audit_trace_id が write flow に通っていない
- notification が outbox を経由していない
- RLS が未適用のまま UI 実装だけ進んだ
- lock_version conflict path が未実装

# 7. conclusion
TalentGrowth phase A の implementation command block は、
次チャットでそのまま kickoff できる着手文として固定する。
