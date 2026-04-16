-- ============================================================
-- CX22073JW Secret Layer First Slice Verification SQL
-- status: implementation-ready-candidate
-- owner: Boss
-- prepared_by: Zero
-- reviewer: 佐藤（DB担当）
-- ============================================================

SET search_path TO "CX22073JW", public;

\echo '============================================================'
\echo '1. table existence and row counts'
\echo '============================================================'
SELECT 'access_route_master' AS table_name, COUNT(*) AS row_count FROM "CX22073JW".access_route_master
UNION ALL
SELECT 'privilege_tier_master', COUNT(*) FROM "CX22073JW".privilege_tier_master
UNION ALL
SELECT 'secret_asset_category_master', COUNT(*) FROM "CX22073JW".secret_asset_category_master
UNION ALL
SELECT 'secret_target_selector_master', COUNT(*) FROM "CX22073JW".secret_target_selector_master
UNION ALL
SELECT 'privileged_policy_profile', COUNT(*) FROM "CX22073JW".privileged_policy_profile
UNION ALL
SELECT 'secret_asset', COUNT(*) FROM "CX22073JW".secret_asset
UNION ALL
SELECT 'secret_target_master', COUNT(*) FROM "CX22073JW".secret_target_master
UNION ALL
SELECT 'secret_route_binding', COUNT(*) FROM "CX22073JW".secret_route_binding
UNION ALL
SELECT 'privileged_route_policy_binding', COUNT(*) FROM "CX22073JW".privileged_route_policy_binding
UNION ALL
SELECT 'privileged_access_audit_log', COUNT(*) FROM "CX22073JW".privileged_access_audit_log
ORDER BY table_name;

\echo ''
\echo '============================================================'
\echo '2. fixed access route codes'
\echo '============================================================'
SELECT
  access_route_code,
  display_name,
  status
FROM "CX22073JW".access_route_master
ORDER BY access_route_code;

\echo ''
\echo '============================================================'
\echo '3. fixed privilege tier codes'
\echo '============================================================'
SELECT
  privilege_tier_code,
  display_name,
  tier_level,
  status
FROM "CX22073JW".privilege_tier_master
ORDER BY tier_level;

\echo ''
\echo '============================================================'
\echo '4. fixed secret category codes'
\echo '============================================================'
SELECT
  secret_asset_category_code,
  display_name,
  status
FROM "CX22073JW".secret_asset_category_master
ORDER BY sort_order, secret_asset_category_code;

\echo ''
\echo '============================================================'
\echo '5. fixed privileged policy profiles'
\echo '============================================================'
SELECT
  privileged_policy_profile_code,
  isolation_required,
  audit_required,
  fallback_allowed,
  status
FROM "CX22073JW".privileged_policy_profile
ORDER BY privileged_policy_profile_code;

\echo ''
\echo '============================================================'
\echo '6. expected minimum counts'
\echo '============================================================'
SELECT 'expected_access_routes' AS check_name, 2 AS expected_count, COUNT(*) AS actual_count
FROM "CX22073JW".access_route_master
WHERE access_route_code IN ('normal','triple')
UNION ALL
SELECT 'expected_privilege_tiers', 3, COUNT(*)
FROM "CX22073JW".privilege_tier_master
WHERE privilege_tier_code IN ('triple_viewer','triple_operator','triple_root')
UNION ALL
SELECT 'expected_secret_categories', 4, COUNT(*)
FROM "CX22073JW".secret_asset_category_master
WHERE secret_asset_category_code IN (
  'protected_knowledge',
  'protected_reference',
  'protected_template',
  'protected_index_support'
)
UNION ALL
SELECT 'expected_privileged_policy_profiles', 3, COUNT(*)
FROM "CX22073JW".privileged_policy_profile
WHERE privileged_policy_profile_code IN (
  'triple_read_isolated_audited',
  'triple_operate_isolated_audited',
  'triple_root_isolated_audited'
)
ORDER BY check_name;
