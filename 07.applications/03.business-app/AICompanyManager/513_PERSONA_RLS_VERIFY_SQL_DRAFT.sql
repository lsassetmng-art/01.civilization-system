-- ============================================================
-- AICompanyManager Persona RLS Verify SQL Draft
-- ============================================================
-- Run only after RLS apply.
-- ============================================================

select
  n.nspname as schema_name,
  c.relname as table_name,
  c.relrowsecurity as rls_enabled,
  c.relforcerowsecurity as force_rls
from pg_class c
join pg_namespace n on n.oid = c.relnamespace
where n.nspname = 'business'
  and c.relname like 'ai_company_manager_%'
  and c.relkind = 'r'
order by c.relname;

select
  schemaname,
  tablename,
  policyname,
  permissive,
  roles,
  cmd
from pg_policies
where schemaname = 'business'
  and tablename like 'ai_company_manager_%'
order by tablename, policyname;
