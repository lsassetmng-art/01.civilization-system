\set ON_ERROR_STOP on
\pset tuples_only on
\pset format unaligned
\pset fieldsep '|'

SELECT 'PHASE|QW-RX_FINAL_STRICT_TENANT_RLS_ACCEPTANCE';
SELECT 'MODE|READ_ONLY_FINAL_VERIFY';

WITH target(full_name) AS (
  VALUES
    ('business.aicm_company'),
    ('business.aicm_department'),
    ('business.aicm_organization'),
    ('business.aicm_department_task_ledger'),
    ('business.aicm_review_item'),
    ('business.aicm_review_action'),
    ('business.aicm_workflow_run')
),
existing AS (
  SELECT full_name
  FROM target
  WHERE to_regclass(full_name) IS NOT NULL
),
rls AS (
  SELECT
    full_name,
    (SELECT relrowsecurity FROM pg_class WHERE oid = to_regclass(full_name)) AS relrowsecurity,
    (SELECT relforcerowsecurity FROM pg_class WHERE oid = to_regclass(full_name)) AS relforcerowsecurity
  FROM existing
)
SELECT 'VERIFY_RLS|' || full_name || '|' || relrowsecurity::text || '|' || relforcerowsecurity::text
FROM rls
ORDER BY full_name;

SELECT 'VERIFY_SMOKE_SAFE_POLICY_COUNT|' || count(*)::text
FROM pg_policies
WHERE schemaname = 'business'
  AND policyname = 'aicm_authenticated_all_smoke_safe';

SELECT 'VERIFY_SERVICE_ROLE_POLICY_COUNT|' || count(*)::text
FROM pg_policies
WHERE schemaname = 'business'
  AND policyname = 'aicm_service_role_all';

SELECT 'VERIFY_STRICT_POLICY_COUNT|' || count(*)::text
FROM pg_policies
WHERE schemaname = 'business'
  AND policyname LIKE 'aicm_%_strict';

SELECT 'VERIFY_HELPER_FUNCTION_COUNT|' || count(*)::text
FROM pg_proc p
JOIN pg_namespace n ON n.oid = p.pronamespace
WHERE n.nspname = 'business'
  AND p.proname LIKE 'aicm_jwt%';

SELECT 'VERIFY_SCHEMA_USAGE_AUTHENTICATED|' || has_schema_privilege('authenticated', 'business', 'USAGE')::text;

SELECT 'VERIFY_AUTH_TABLE_SELECT_COUNT|' || count(*)::text
FROM (
  VALUES
    ('business.aicm_company'),
    ('business.aicm_department'),
    ('business.aicm_organization'),
    ('business.aicm_department_task_ledger'),
    ('business.aicm_review_item'),
    ('business.aicm_review_action'),
    ('business.aicm_workflow_run')
) AS t(full_name)
WHERE has_table_privilege('authenticated', full_name, 'SELECT');

WITH target(full_name) AS (
  VALUES
    ('business.aicm_company'),
    ('business.aicm_department'),
    ('business.aicm_organization'),
    ('business.aicm_department_task_ledger'),
    ('business.aicm_review_item'),
    ('business.aicm_review_action'),
    ('business.aicm_workflow_run')
),
existing AS (
  SELECT full_name
  FROM target
  WHERE to_regclass(full_name) IS NOT NULL
),
rls AS (
  SELECT
    full_name,
    (SELECT relrowsecurity FROM pg_class WHERE oid = to_regclass(full_name)) AS relrowsecurity
  FROM existing
),
smoke_safe AS (
  SELECT count(*) AS cnt
  FROM pg_policies
  WHERE schemaname = 'business'
    AND policyname = 'aicm_authenticated_all_smoke_safe'
),
service_role AS (
  SELECT count(*) AS cnt
  FROM pg_policies
  WHERE schemaname = 'business'
    AND policyname = 'aicm_service_role_all'
),
strict_policy AS (
  SELECT count(*) AS cnt
  FROM pg_policies
  WHERE schemaname = 'business'
    AND policyname LIKE 'aicm_%_strict'
),
helper AS (
  SELECT count(*) AS cnt
  FROM pg_proc p
  JOIN pg_namespace n ON n.oid = p.pronamespace
  WHERE n.nspname = 'business'
    AND p.proname LIKE 'aicm_jwt%'
),
grant_check AS (
  SELECT
    has_schema_privilege('authenticated', 'business', 'USAGE') AS schema_usage,
    (
      SELECT count(*)
      FROM (
        VALUES
          ('business.aicm_company'),
          ('business.aicm_department'),
          ('business.aicm_organization'),
          ('business.aicm_department_task_ledger'),
          ('business.aicm_review_item'),
          ('business.aicm_review_action'),
          ('business.aicm_workflow_run')
      ) AS t(full_name)
      WHERE has_table_privilege('authenticated', full_name, 'SELECT')
    ) AS table_select_count
)
SELECT 'VERIFY_RESULT|' ||
  CASE
    WHEN (SELECT count(*) FROM rls) = 7
     AND NOT EXISTS (SELECT 1 FROM rls WHERE relrowsecurity IS NOT TRUE)
     AND (SELECT cnt FROM smoke_safe) = 0
     AND (SELECT cnt FROM service_role) >= 7
     AND (SELECT cnt FROM strict_policy) >= 20
     AND (SELECT cnt FROM helper) >= 8
     AND (SELECT schema_usage FROM grant_check) IS TRUE
     AND (SELECT table_select_count FROM grant_check) = 7
    THEN 'PASS'
    ELSE 'FAIL'
  END;
