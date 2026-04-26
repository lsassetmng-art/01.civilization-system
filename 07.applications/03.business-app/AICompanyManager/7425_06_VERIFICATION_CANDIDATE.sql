-- ============================================================
-- AICompanyManager 06 Verification Candidate
-- status: CANDIDATE ONLY / NOT APPLIED
-- ============================================================

select 'pgcrypto' as check_name, count(*) as hit_count
from pg_extension
where extname = 'pgcrypto';

select table_name
from information_schema.tables
where table_schema = 'business'
  and table_name like 'aicm_%'
order by table_name;

select schemaname, tablename, policyname
from pg_policies
where schemaname = 'business'
  and tablename like 'aicm_%'
order by tablename, policyname;

select routine_name
from information_schema.routines
where specific_schema = 'business'
  and routine_name like 'aicm_%'
order by routine_name;

select c.relname as table_name, c.relrowsecurity as rls_enabled
from pg_class c
join pg_namespace n on n.oid = c.relnamespace
where n.nspname = 'business'
  and c.relname like 'aicm_%'
  and c.relkind = 'r'
order by c.relname;
