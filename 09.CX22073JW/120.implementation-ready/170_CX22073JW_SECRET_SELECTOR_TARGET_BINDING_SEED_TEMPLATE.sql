-- ============================================================
-- CX22073JW Secret Selector / Target / Binding Seed Template
-- status: implementation-ready-template
-- owner: Boss
-- prepared_by: Zero
-- reviewer: 佐藤（DB担当）
-- note:
--   - replace placeholder codes before apply
--   - keep seed scope intentionally small
-- ============================================================

SET search_path TO "CX22073JW", public;

BEGIN;

-- ------------------------------------------------------------
-- 1. selector master seed
-- ------------------------------------------------------------
INSERT INTO "CX22073JW".secret_target_selector_master (
  secret_target_selector_code,
  display_name,
  description,
  selector_scope,
  sort_order,
  status
)
VALUES
  ('triple_selector_alpha', 'Triple Selector Alpha', 'Privileged selector alpha', 'privileged', 10, 'active'),
  ('triple_selector_beta',  'Triple Selector Beta',  'Privileged selector beta',  'privileged', 20, 'active')
ON CONFLICT (secret_target_selector_code) DO UPDATE
SET
  display_name   = EXCLUDED.display_name,
  description    = EXCLUDED.description,
  selector_scope = EXCLUDED.selector_scope,
  sort_order     = EXCLUDED.sort_order,
  status         = EXCLUDED.status,
  updated_at     = now();

-- ------------------------------------------------------------
-- 2. target master seed
-- ------------------------------------------------------------
INSERT INTO "CX22073JW".secret_target_master (
  secret_target_code,
  secret_target_selector_id,
  secret_asset_category_id,
  target_type,
  display_name,
  description,
  status
)
SELECT
  v.secret_target_code,
  s.secret_target_selector_id,
  c.secret_asset_category_id,
  v.target_type,
  v.display_name,
  v.description,
  v.status
FROM (
  VALUES
    ('triple_target_alpha_knowledge', 'triple_selector_alpha', 'protected_knowledge', 'knowledge_target', 'Triple Target Alpha Knowledge', 'Protected knowledge target alpha', 'active'),
    ('triple_target_beta_reference',  'triple_selector_beta',  'protected_reference', 'reference_target', 'Triple Target Beta Reference', 'Protected reference target beta', 'active')
) AS v(
  secret_target_code,
  secret_target_selector_code,
  secret_asset_category_code,
  target_type,
  display_name,
  description,
  status
)
JOIN "CX22073JW".secret_target_selector_master s
  ON s.secret_target_selector_code = v.secret_target_selector_code
JOIN "CX22073JW".secret_asset_category_master c
  ON c.secret_asset_category_code = v.secret_asset_category_code
ON CONFLICT (secret_target_code) DO UPDATE
SET
  secret_target_selector_id = EXCLUDED.secret_target_selector_id,
  secret_asset_category_id  = EXCLUDED.secret_asset_category_id,
  target_type               = EXCLUDED.target_type,
  display_name              = EXCLUDED.display_name,
  description               = EXCLUDED.description,
  status                    = EXCLUDED.status,
  updated_at                = now();

-- ------------------------------------------------------------
-- 3. secret route binding seed
-- ------------------------------------------------------------
INSERT INTO "CX22073JW".secret_route_binding (
  secret_route_binding_code,
  access_route_id,
  privilege_tier_id,
  secret_target_id,
  binding_status,
  description,
  status
)
SELECT
  v.secret_route_binding_code,
  ar.access_route_id,
  pt.privilege_tier_id,
  st.secret_target_id,
  v.binding_status,
  v.description,
  v.status
FROM (
  VALUES
    ('triple_viewer_alpha_binding',   'triple', 'triple_viewer',   'triple_target_alpha_knowledge', 'active', 'Viewer binding for alpha target',   'active'),
    ('triple_operator_beta_binding',  'triple', 'triple_operator', 'triple_target_beta_reference',  'active', 'Operator binding for beta target',  'active'),
    ('triple_root_alpha_binding',     'triple', 'triple_root',     'triple_target_alpha_knowledge', 'active', 'Root binding for alpha target',     'active')
) AS v(
  secret_route_binding_code,
  access_route_code,
  privilege_tier_code,
  secret_target_code,
  binding_status,
  description,
  status
)
JOIN "CX22073JW".access_route_master ar
  ON ar.access_route_code = v.access_route_code
JOIN "CX22073JW".privilege_tier_master pt
  ON pt.privilege_tier_code = v.privilege_tier_code
JOIN "CX22073JW".secret_target_master st
  ON st.secret_target_code = v.secret_target_code
ON CONFLICT (secret_route_binding_code) DO UPDATE
SET
  access_route_id   = EXCLUDED.access_route_id,
  privilege_tier_id = EXCLUDED.privilege_tier_id,
  secret_target_id  = EXCLUDED.secret_target_id,
  binding_status    = EXCLUDED.binding_status,
  description       = EXCLUDED.description,
  status            = EXCLUDED.status,
  updated_at        = now();

-- ------------------------------------------------------------
-- 4. privileged route policy binding seed
-- ------------------------------------------------------------
INSERT INTO "CX22073JW".privileged_route_policy_binding (
  privileged_route_policy_binding_code,
  access_route_id,
  privilege_tier_id,
  secret_target_selector_id,
  privileged_policy_profile_id,
  status
)
SELECT
  v.privileged_route_policy_binding_code,
  ar.access_route_id,
  pt.privilege_tier_id,
  ss.secret_target_selector_id,
  pp.privileged_policy_profile_id,
  v.status
FROM (
  VALUES
    ('triple_viewer_alpha_policy_binding',   'triple', 'triple_viewer',   'triple_selector_alpha', 'triple_read_isolated_audited',    'active'),
    ('triple_operator_beta_policy_binding',  'triple', 'triple_operator', 'triple_selector_beta',  'triple_operate_isolated_audited', 'active'),
    ('triple_root_alpha_policy_binding',     'triple', 'triple_root',     'triple_selector_alpha', 'triple_root_isolated_audited',    'active')
) AS v(
  privileged_route_policy_binding_code,
  access_route_code,
  privilege_tier_code,
  secret_target_selector_code,
  privileged_policy_profile_code,
  status
)
JOIN "CX22073JW".access_route_master ar
  ON ar.access_route_code = v.access_route_code
JOIN "CX22073JW".privilege_tier_master pt
  ON pt.privilege_tier_code = v.privilege_tier_code
JOIN "CX22073JW".secret_target_selector_master ss
  ON ss.secret_target_selector_code = v.secret_target_selector_code
JOIN "CX22073JW".privileged_policy_profile pp
  ON pp.privileged_policy_profile_code = v.privileged_policy_profile_code
ON CONFLICT (privileged_route_policy_binding_code) DO UPDATE
SET
  access_route_id              = EXCLUDED.access_route_id,
  privilege_tier_id            = EXCLUDED.privilege_tier_id,
  secret_target_selector_id    = EXCLUDED.secret_target_selector_id,
  privileged_policy_profile_id = EXCLUDED.privileged_policy_profile_id,
  status                       = EXCLUDED.status,
  updated_at                   = now();

COMMIT;
