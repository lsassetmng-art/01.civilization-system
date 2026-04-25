-- ============================================================
-- AICompanyManager DB Post Apply Verify SQL Draft
-- ============================================================
-- Run only after DB apply.
-- ============================================================

select
  table_schema,
  table_name
from information_schema.tables
where table_schema = 'business'
  and table_name like 'ai_company_manager_%'
order by table_name;

select
  schemaname,
  tablename,
  indexname
from pg_indexes
where schemaname = 'business'
  and tablename like 'ai_company_manager_%'
order by tablename, indexname;

select
  n.nspname as schema_name,
  c.relname as table_name,
  c.relrowsecurity as rls_enabled
from pg_class c
join pg_namespace n on n.oid = c.relnamespace
where n.nspname = 'business'
  and c.relname like 'ai_company_manager_%'
  and c.relkind = 'r'
order by c.relname;
