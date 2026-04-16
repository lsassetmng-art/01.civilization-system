-- ============================================================
-- CX22073JW Secret Layer First Slice Base Seed Candidate
-- status: implementation-ready-candidate
-- owner: Boss
-- prepared_by: Zero
-- reviewer: 佐藤（DB担当）
-- ============================================================

SET search_path TO "CX22073JW", public;

BEGIN;

-- ------------------------------------------------------------
-- 1. access_route_master
-- ------------------------------------------------------------
INSERT INTO "CX22073JW".access_route_master (
  access_route_code,
  display_name,
  description,
  sort_order,
  status
)
VALUES
  ('normal', 'Normal Route', 'Ordinary caller/scope based route', 10, 'active'),
  ('triple', 'Triple Route', 'Privileged triple-only route', 20, 'active')
ON CONFLICT (access_route_code) DO UPDATE
SET
  display_name = EXCLUDED.display_name,
  description  = EXCLUDED.description,
  sort_order   = EXCLUDED.sort_order,
  status       = EXCLUDED.status,
  updated_at   = now();

-- ------------------------------------------------------------
-- 2. privilege_tier_master
-- ------------------------------------------------------------
INSERT INTO "CX22073JW".privilege_tier_master (
  privilege_tier_code,
  display_name,
  description,
  sort_order,
  tier_level,
  status
)
VALUES
  ('triple_viewer',   'Triple Viewer',   'Privileged read lane',                    10, 100, 'active'),
  ('triple_operator', 'Triple Operator', 'Privileged operational handling lane',    20, 200, 'active'),
  ('triple_root',     'Triple Root',     'Highest privileged administration lane',  30, 300, 'active')
ON CONFLICT (privilege_tier_code) DO UPDATE
SET
  display_name = EXCLUDED.display_name,
  description  = EXCLUDED.description,
  sort_order   = EXCLUDED.sort_order,
  tier_level   = EXCLUDED.tier_level,
  status       = EXCLUDED.status,
  updated_at   = now();

-- ------------------------------------------------------------
-- 3. secret_asset_category_master
-- ------------------------------------------------------------
INSERT INTO "CX22073JW".secret_asset_category_master (
  secret_asset_category_code,
  display_name,
  description,
  sort_order,
  status
)
VALUES
  ('protected_knowledge',      'Protected Knowledge',      'Privileged protected knowledge asset',          10, 'active'),
  ('protected_reference',      'Protected Reference',      'Privileged protected reference asset',          20, 'active'),
  ('protected_template',       'Protected Template',       'Privileged protected template asset',           30, 'active'),
  ('protected_index_support',  'Protected Index Support',  'Privileged protected index/support asset',      40, 'active')
ON CONFLICT (secret_asset_category_code) DO UPDATE
SET
  display_name = EXCLUDED.display_name,
  description  = EXCLUDED.description,
  sort_order   = EXCLUDED.sort_order,
  status       = EXCLUDED.status,
  updated_at   = now();

-- ------------------------------------------------------------
-- 4. privileged_policy_profile
-- ------------------------------------------------------------
INSERT INTO "CX22073JW".privileged_policy_profile (
  privileged_policy_profile_code,
  display_name,
  description,
  isolation_required,
  audit_required,
  fallback_allowed,
  status
)
VALUES
  ('triple_read_isolated_audited',     'Triple Read Isolated Audited',     'Viewer-grade isolated audited policy',    true, true, false, 'active'),
  ('triple_operate_isolated_audited',  'Triple Operate Isolated Audited',  'Operator-grade isolated audited policy',  true, true, false, 'active'),
  ('triple_root_isolated_audited',     'Triple Root Isolated Audited',     'Root-grade isolated audited policy',      true, true, false, 'active')
ON CONFLICT (privileged_policy_profile_code) DO UPDATE
SET
  display_name       = EXCLUDED.display_name,
  description        = EXCLUDED.description,
  isolation_required = EXCLUDED.isolation_required,
  audit_required     = EXCLUDED.audit_required,
  fallback_allowed   = EXCLUDED.fallback_allowed,
  status             = EXCLUDED.status,
  updated_at         = now();

COMMIT;

-- ------------------------------------------------------------
-- 5. note
-- ------------------------------------------------------------
-- secret_target_selector_master
-- secret_target_master
-- secret_route_binding
-- privileged_route_policy_binding
-- are intentionally left for environment/domain-specific design.
