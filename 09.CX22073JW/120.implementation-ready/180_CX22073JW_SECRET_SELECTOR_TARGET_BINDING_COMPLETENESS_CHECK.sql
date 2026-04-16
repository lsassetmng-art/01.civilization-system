-- ============================================================
-- CX22073JW Secret Selector / Target / Binding Completeness Check
-- status: implementation-ready-candidate
-- owner: Boss
-- prepared_by: Zero
-- reviewer: 佐藤（DB担当）
-- ============================================================

SET search_path TO "CX22073JW", public;

\echo '============================================================'
\echo '1. selector counts'
\echo '============================================================'
SELECT
  secret_target_selector_code,
  display_name,
  status
FROM "CX22073JW".secret_target_selector_master
ORDER BY sort_order, secret_target_selector_code;

\echo ''
\echo '============================================================'
\echo '2. target counts'
\echo '============================================================'
SELECT
  st.secret_target_code,
  ss.secret_target_selector_code,
  c.secret_asset_category_code,
  st.target_type,
  st.display_name,
  st.status
FROM "CX22073JW".secret_target_master st
JOIN "CX22073JW".secret_target_selector_master ss
  ON ss.secret_target_selector_id = st.secret_target_selector_id
LEFT JOIN "CX22073JW".secret_asset_category_master c
  ON c.secret_asset_category_id = st.secret_asset_category_id
ORDER BY st.secret_target_code;

\echo ''
\echo '============================================================'
\echo '3. route binding check'
\echo '============================================================'
SELECT
  srb.secret_route_binding_code,
  ar.access_route_code,
  pt.privilege_tier_code,
  st.secret_target_code,
  srb.binding_status,
  srb.status
FROM "CX22073JW".secret_route_binding srb
JOIN "CX22073JW".access_route_master ar
  ON ar.access_route_id = srb.access_route_id
JOIN "CX22073JW".privilege_tier_master pt
  ON pt.privilege_tier_id = srb.privilege_tier_id
JOIN "CX22073JW".secret_target_master st
  ON st.secret_target_id = srb.secret_target_id
ORDER BY srb.secret_route_binding_code;

\echo ''
\echo '============================================================'
\echo '4. policy binding check'
\echo '============================================================'
SELECT
  prpb.privileged_route_policy_binding_code,
  ar.access_route_code,
  pt.privilege_tier_code,
  ss.secret_target_selector_code,
  ppp.privileged_policy_profile_code,
  prpb.status
FROM "CX22073JW".privileged_route_policy_binding prpb
JOIN "CX22073JW".access_route_master ar
  ON ar.access_route_id = prpb.access_route_id
JOIN "CX22073JW".privilege_tier_master pt
  ON pt.privilege_tier_id = prpb.privilege_tier_id
JOIN "CX22073JW".secret_target_selector_master ss
  ON ss.secret_target_selector_id = prpb.secret_target_selector_id
JOIN "CX22073JW".privileged_policy_profile ppp
  ON ppp.privileged_policy_profile_id = prpb.privileged_policy_profile_id
ORDER BY prpb.privileged_route_policy_binding_code;

\echo ''
\echo '============================================================'
\echo '5. uncovered selector check'
\echo '============================================================'
SELECT
  ss.secret_target_selector_code
FROM "CX22073JW".secret_target_selector_master ss
LEFT JOIN "CX22073JW".secret_target_master st
  ON st.secret_target_selector_id = ss.secret_target_selector_id
WHERE st.secret_target_id IS NULL
ORDER BY ss.secret_target_selector_code;

\echo ''
\echo '============================================================'
\echo '6. selector without policy binding check'
\echo '============================================================'
SELECT
  ss.secret_target_selector_code
FROM "CX22073JW".secret_target_selector_master ss
LEFT JOIN "CX22073JW".privileged_route_policy_binding prpb
  ON prpb.secret_target_selector_id = ss.secret_target_selector_id
WHERE prpb.privileged_route_policy_binding_id IS NULL
ORDER BY ss.secret_target_selector_code;

\echo ''
\echo '============================================================'
\echo '7. target without route binding check'
\echo '============================================================'
SELECT
  st.secret_target_code
FROM "CX22073JW".secret_target_master st
LEFT JOIN "CX22073JW".secret_route_binding srb
  ON srb.secret_target_id = st.secret_target_id
WHERE srb.secret_route_binding_id IS NULL
ORDER BY st.secret_target_code;
