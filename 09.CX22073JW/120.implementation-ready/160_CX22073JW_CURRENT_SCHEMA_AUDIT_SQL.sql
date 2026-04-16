-- ============================================================
-- CX22073JW Current Schema Audit SQL
-- status: implementation-ready-draft
-- owner: Boss
-- prepared_by: Zero
-- reviewer: 佐藤（DB担当）
-- purpose:
--   - snapshot current CX22073JW schema
--   - compare actual objects with canonical first-slice secret tables
-- ============================================================

SET search_path TO "CX22073JW", public;

\echo '============================================================'
\echo '1. current table inventory'
\echo '============================================================'
SELECT
  table_name
FROM information_schema.tables
WHERE table_schema = 'CX22073JW'
  AND table_type = 'BASE TABLE'
ORDER BY table_name;

\echo ''
\echo '============================================================'
\echo '2. current view inventory'
\echo '============================================================'
SELECT
  table_name AS view_name
FROM information_schema.views
WHERE table_schema = 'CX22073JW'
ORDER BY table_name;

\echo ''
\echo '============================================================'
\echo '3. current function inventory'
\echo '============================================================'
SELECT
  p.proname AS function_name,
  pg_get_function_identity_arguments(p.oid) AS identity_args
FROM pg_proc p
JOIN pg_namespace n
  ON n.oid = p.pronamespace
WHERE n.nspname = 'CX22073JW'
ORDER BY p.proname, pg_get_function_identity_arguments(p.oid);

\echo ''
\echo '============================================================'
\echo '4. current column inventory'
\echo '============================================================'
SELECT
  c.table_name,
  c.ordinal_position,
  c.column_name,
  c.data_type,
  c.is_nullable,
  c.column_default
FROM information_schema.columns c
WHERE c.table_schema = 'CX22073JW'
ORDER BY c.table_name, c.ordinal_position;

\echo ''
\echo '============================================================'
\echo '5. current PK / FK / UNIQUE constraints'
\echo '============================================================'
SELECT
  tc.table_name,
  tc.constraint_name,
  tc.constraint_type
FROM information_schema.table_constraints tc
WHERE tc.table_schema = 'CX22073JW'
ORDER BY tc.table_name, tc.constraint_type, tc.constraint_name;

\echo ''
\echo '============================================================'
\echo '6. current foreign key details'
\echo '============================================================'
SELECT
  tc.table_name,
  kcu.column_name,
  tc.constraint_name,
  ccu.table_name AS foreign_table_name,
  ccu.column_name AS foreign_column_name
FROM information_schema.table_constraints tc
JOIN information_schema.key_column_usage kcu
  ON tc.constraint_name = kcu.constraint_name
 AND tc.table_schema = kcu.table_schema
JOIN information_schema.constraint_column_usage ccu
  ON ccu.constraint_name = tc.constraint_name
 AND ccu.table_schema = tc.table_schema
WHERE tc.table_schema = 'CX22073JW'
  AND tc.constraint_type = 'FOREIGN KEY'
ORDER BY tc.table_name, tc.constraint_name, kcu.ordinal_position;

\echo ''
\echo '============================================================'
\echo '7. current index inventory'
\echo '============================================================'
SELECT
  schemaname,
  tablename,
  indexname,
  indexdef
FROM pg_indexes
WHERE schemaname = 'CX22073JW'
ORDER BY tablename, indexname;

\echo ''
\echo '============================================================'
\echo '8. canonical secret first-slice table existence'
\echo '============================================================'
WITH required_tables AS (
  SELECT *
  FROM (VALUES
    ('access_route_master'),
    ('privilege_tier_master'),
    ('secret_asset_category_master'),
    ('secret_asset'),
    ('secret_target_selector_master'),
    ('secret_target_master'),
    ('secret_route_binding'),
    ('privileged_policy_profile'),
    ('privileged_route_policy_binding'),
    ('privileged_access_audit_log')
  ) AS v(table_name)
)
SELECT
  r.table_name AS canonical_table_name,
  CASE
    WHEN t.table_name IS NOT NULL THEN 'yes'
    ELSE 'no'
  END AS actual_exists
FROM required_tables r
LEFT JOIN information_schema.tables t
  ON t.table_schema = 'CX22073JW'
 AND t.table_name = r.table_name
 AND t.table_type = 'BASE TABLE'
ORDER BY r.table_name;

\echo ''
\echo '============================================================'
\echo '9. canonical secret first-slice column existence (only for existing tables)'
\echo '============================================================'
WITH required_columns AS (
  SELECT *
  FROM (VALUES
    ('access_route_master','access_route_code'),
    ('privilege_tier_master','privilege_tier_code'),
    ('secret_asset_category_master','secret_asset_category_code'),
    ('secret_asset','secret_asset_code'),
    ('secret_target_selector_master','secret_target_selector_code'),
    ('secret_target_master','secret_target_code'),
    ('secret_route_binding','secret_route_binding_code'),
    ('privileged_policy_profile','privileged_policy_profile_code'),
    ('privileged_route_policy_binding','privileged_route_policy_binding_code'),
    ('privileged_access_audit_log','decision_status')
  ) AS v(table_name, column_name)
)
SELECT
  rc.table_name,
  rc.column_name,
  CASE
    WHEN c.column_name IS NOT NULL THEN 'yes'
    ELSE 'no'
  END AS actual_exists
FROM required_columns rc
LEFT JOIN information_schema.columns c
  ON c.table_schema = 'CX22073JW'
 AND c.table_name = rc.table_name
 AND c.column_name = rc.column_name
ORDER BY rc.table_name, rc.column_name;

\echo ''
\echo '============================================================'
\echo '10. quick keep/add starting point'
\echo '============================================================'
WITH required_tables AS (
  SELECT *
  FROM (VALUES
    ('access_route_master'),
    ('privilege_tier_master'),
    ('secret_asset_category_master'),
    ('secret_asset'),
    ('secret_target_selector_master'),
    ('secret_target_master'),
    ('secret_route_binding'),
    ('privileged_policy_profile'),
    ('privileged_route_policy_binding'),
    ('privileged_access_audit_log')
  ) AS v(table_name)
)
SELECT
  r.table_name AS target_object,
  'table' AS object_type,
  CASE WHEN t.table_name IS NOT NULL THEN 'yes' ELSE 'no' END AS actual_exists,
  'yes' AS canonical_required,
  CASE
    WHEN t.table_name IS NOT NULL THEN 'review_existing'
    ELSE 'add'
  END AS suggested_decision
FROM required_tables r
LEFT JOIN information_schema.tables t
  ON t.table_schema = 'CX22073JW'
 AND t.table_name = r.table_name
 AND t.table_type = 'BASE TABLE'
ORDER BY r.table_name;
