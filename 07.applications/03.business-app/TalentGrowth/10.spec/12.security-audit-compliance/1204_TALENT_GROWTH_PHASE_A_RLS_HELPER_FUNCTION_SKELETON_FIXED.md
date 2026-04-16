# TALENT GROWTH PHASE A RLS HELPER FUNCTION SKELETON FIXED

status: draft-phase-a-rls-helper-function-skeleton-fixed
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero
db_review_required_by: 佐藤

# 0. purpose
本資料は、
TalentGrowth phase A の RLS baseline を支える
helper function skeleton を固定するための資料である。

# 1. helper purpose
RLS helper は以下を簡潔に表現する。
- current company id
- current employee id
- current role membership
- HR operator 判定
- manager operator 判定
- executive operator 判定
- admin operator 判定

# 2. helper function candidates
- auth_company_id()
- auth_employee_id()
- auth_role_codes()
- has_role(role_code text)
- is_hr_operator()
- is_manager_operator()
- is_executive_operator()
- is_admin_operator()

# 3. skeleton SQL block
~~~sql
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
~~~

# 4. representative RLS use examples

## employee self own notification
~~~sql
create policy tg_notification_self_select
on tg_notification
for select
using (
  company_id = auth_company_id()
  and target_employee_id = auth_employee_id()
);
~~~

## HR all in company
~~~sql
create policy tg_employee_profile_hr_all
on tg_employee_profile
for all
using (
  company_id = auth_company_id()
  and is_hr_operator()
)
with check (
  company_id = auth_company_id()
  and is_hr_operator()
);
~~~

## manager limited read baseline
notes:
- full team membership helper may be deferred
- phase A can keep manager team filtering in service/API layer where RLS helper not yet rich enough

# 5. caution
- exact JWT claim names may differ by environment
- current_setting-based helper names are skeleton only
- blanket admin bypass must not be introduced casually
- manager team scope may require dedicated membership helper later

# 6. conclusion
phase A RLS helper は、
company / employee / role 判定の最小関数群から始める方針で固定する。
