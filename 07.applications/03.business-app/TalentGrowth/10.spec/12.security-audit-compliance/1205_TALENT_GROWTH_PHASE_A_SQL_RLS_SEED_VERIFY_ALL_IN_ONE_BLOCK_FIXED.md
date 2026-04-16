# TALENT GROWTH PHASE A SQL RLS SEED VERIFY ALL-IN-ONE BLOCK FIXED

status: draft-phase-a-sql-rls-seed-verify-all-in-one-block-fixed
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero
db_review_required_by: 佐藤

# 0. purpose
本資料は、
TalentGrowth phase A の DB 着手を
DDL / RLS helper / seed / verify まで一括で確認できる
all-in-one block として固定するための資料である。

# 1. block coverage
- phase A DDL apply
- phase A index apply
- phase A RLS helper apply
- minimum seed
- demo seed
- verify query

# 2. execution stance
- 方法A
- DATABASE_URL 使用
- Termux 直貼り
- destructive change を含めない
- 佐藤(DB担当)レビュー前提

# 3. all-in-one block structure
~~~bash
psql "$DATABASE_URL" <<'SQL'
begin;

-- 1. helper functions
create or replace function auth_company_id()
returns text
language sql
stable
as $$
  select current_setting('request.jwt.claim.company_id', true)::text
$$;

create or replace function auth_employee_id()
returns text
language sql
stable
as $$
  select current_setting('request.jwt.claim.employee_id', true)::text
$$;

create or replace function auth_role_codes()
returns text[]
language sql
stable
as $$
  select coalesce(
    string_to_array(current_setting('request.jwt.claim.role_codes', true), ','),
    array[]::text[]
  )
$$;

create or replace function has_role(role_code text)
returns boolean
language sql
stable
as $$
  select role_code = any(auth_role_codes())
$$;

create or replace function is_hr_operator()
returns boolean
language sql
stable
as $$
  select has_role('HR')
$$;

create or replace function is_manager_operator()
returns boolean
language sql
stable
as $$
  select has_role('MANAGER')
$$;

create or replace function is_executive_operator()
returns boolean
language sql
stable
as $$
  select has_role('EXECUTIVE')
$$;

create or replace function is_admin_operator()
returns boolean
language sql
stable
as $$
  select has_role('ADMIN')
$$;

-- 2. tables / indexes
-- use 1200008 and 1200026 related baseline as source of truth

-- 3. seed
insert into tg_job_family_master (
  job_family_id, company_id, job_family_code, label_ja, created_by, updated_by
) values
  ('jfam_store', 'comp_demo_01', 'STORE', '店舗職群', 'seed', 'seed')
on conflict do nothing;

insert into tg_job_role_master (
  job_role_id, company_id, job_family_id, job_role_code, label_ja, created_by, updated_by
) values
  ('jrole_store_staff', 'comp_demo_01', 'jfam_store', 'STORE_STAFF', '店舗担当', 'seed', 'seed'),
  ('jrole_store_manager', 'comp_demo_01', 'jfam_store', 'STORE_MANAGER', '店長', 'seed', 'seed')
on conflict do nothing;

insert into tg_grade_master (
  grade_id, company_id, grade_code, label_ja, grade_order, created_by, updated_by
) values
  ('grade_g2', 'comp_demo_01', 'G2', '一般', 20, 'seed', 'seed'),
  ('grade_g3', 'comp_demo_01', 'G3', '主任級', 30, 'seed', 'seed')
on conflict do nothing;

commit;
SQL
~~~

# 4. verify block
~~~bash
psql "$DATABASE_URL" <<'SQL'
select 'tg_job_family_master' as table_name, count(*) as cnt from tg_job_family_master
union all
select 'tg_job_role_master', count(*) from tg_job_role_master
union all
select 'tg_grade_master', count(*) from tg_grade_master
union all
select 'tg_employee_profile', count(*) from tg_employee_profile
union all
select 'tg_evaluation_sheet', count(*) from tg_evaluation_sheet
union all
select 'tg_notification', count(*) from tg_notification;
SQL
~~~

# 5. conclusion
phase A DB apply は、
DDL / helper / seed / verify を束ねた block で固定する。
