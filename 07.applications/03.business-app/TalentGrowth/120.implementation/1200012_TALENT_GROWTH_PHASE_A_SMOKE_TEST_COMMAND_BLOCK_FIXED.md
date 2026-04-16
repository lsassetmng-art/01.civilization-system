# TALENT GROWTH PHASE A SMOKE TEST COMMAND BLOCK FIXED

status: draft-phase-a-smoke-test-command-block-fixed
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero

# 0. purpose
本資料は、
TalentGrowth phase A の最初の smoke test を
Termux から確認する command block として固定するための資料である。

# 1. smoke targets
- tables exist
- seed rows exist
- representative entity joins work
- notification baseline exists
- phase A read screens can be stub-connected

# 2. DB smoke block
~~~bash
psql "$DATABASE_URL" <<'SQL'
select 'tg_employee_profile' as table_name, count(*) as cnt from tg_employee_profile;
select 'tg_employee_certification' as table_name, count(*) as cnt from tg_employee_certification;
select 'tg_employee_skill' as table_name, count(*) as cnt from tg_employee_skill;
select 'tg_evaluation_sheet' as table_name, count(*) as cnt from tg_evaluation_sheet;
select 'tg_growth_plan' as table_name, count(*) as cnt from tg_growth_plan;
select 'tg_notification' as table_name, count(*) as cnt from tg_notification;
SQL
~~~

# 3. representative join smoke
~~~bash
psql "$DATABASE_URL" <<'SQL'
select
  es.evaluation_sheet_id,
  ep.full_name as employee_name,
  mgr.full_name as manager_name,
  es.current_role_fit_score,
  es.target_role_fit_score,
  es.growth_potential_score
from tg_evaluation_sheet es
join tg_employee_profile ep
  on ep.employee_id = es.employee_id
left join tg_employee_profile mgr
  on mgr.employee_id = es.manager_employee_id
where es.evaluation_sheet_id = 'esheet_demo_01';
SQL
~~~

# 4. role requirement smoke
~~~bash
psql "$DATABASE_URL" <<'SQL'
select
  rr.role_requirement_id,
  jr.label_ja as target_role,
  rr.requirement_version,
  rr.overall_weight_skill,
  rr.overall_weight_certification,
  rr.overall_weight_experience,
  rr.overall_weight_performance,
  rr.overall_weight_behavior,
  rr.overall_weight_growth
from tg_role_requirement rr
join tg_job_role_master jr
  on jr.job_role_id = rr.job_role_id
where rr.role_requirement_id = 'rr_demo_store_manager_2026h1';
SQL
~~~

# 5. notification smoke
~~~bash
psql "$DATABASE_URL" <<'SQL'
select
  n.notification_id,
  n.notification_type_code,
  n.target_employee_id,
  n.deep_link_type,
  n.deep_link_target_id,
  n.unread_flag
from tg_notification n
where n.notification_id = 'notif_demo_01';
SQL
~~~

# 6. phase A minimum pass
- all target tables return count >= 0
- baseline seed rows exist
- evaluation sheet joins resolve employee and manager names
- role requirement rows resolve target role
- notification row exists
- no SQL errors in representative queries

# 7. conclusion
phase A 着手後の最初の確認は、
この smoke test command block を基準に行う。
