-- ============================================================
-- CX22073JW Secret Layer First Slice Exact DDL Candidate
-- status: implementation-ready-candidate
-- owner: Boss
-- prepared_by: Zero
-- reviewer: 佐藤（DB担当）
-- ============================================================

SET search_path TO "CX22073JW", public;

-- ------------------------------------------------------------
-- 1. access_route_master
-- ------------------------------------------------------------
CREATE TABLE IF NOT EXISTS "CX22073JW".access_route_master (
  access_route_id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  access_route_code text NOT NULL UNIQUE,
  display_name text NOT NULL,
  description text NULL,
  sort_order integer NOT NULL DEFAULT 0,
  status text NOT NULL DEFAULT 'active',
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now()
);

-- ------------------------------------------------------------
-- 2. privilege_tier_master
-- ------------------------------------------------------------
CREATE TABLE IF NOT EXISTS "CX22073JW".privilege_tier_master (
  privilege_tier_id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  privilege_tier_code text NOT NULL UNIQUE,
  display_name text NOT NULL,
  description text NULL,
  sort_order integer NOT NULL DEFAULT 0,
  tier_level integer NOT NULL,
  status text NOT NULL DEFAULT 'active',
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now()
);

-- ------------------------------------------------------------
-- 3. secret_asset_category_master
-- ------------------------------------------------------------
CREATE TABLE IF NOT EXISTS "CX22073JW".secret_asset_category_master (
  secret_asset_category_id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  secret_asset_category_code text NOT NULL UNIQUE,
  display_name text NOT NULL,
  description text NULL,
  sort_order integer NOT NULL DEFAULT 0,
  status text NOT NULL DEFAULT 'active',
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now()
);

-- ------------------------------------------------------------
-- 4. secret_target_selector_master
-- ------------------------------------------------------------
CREATE TABLE IF NOT EXISTS "CX22073JW".secret_target_selector_master (
  secret_target_selector_id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  secret_target_selector_code text NOT NULL UNIQUE,
  display_name text NOT NULL,
  description text NULL,
  selector_scope text NULL,
  sort_order integer NOT NULL DEFAULT 0,
  status text NOT NULL DEFAULT 'active',
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now()
);

-- ------------------------------------------------------------
-- 5. privileged_policy_profile
-- ------------------------------------------------------------
CREATE TABLE IF NOT EXISTS "CX22073JW".privileged_policy_profile (
  privileged_policy_profile_id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  privileged_policy_profile_code text NOT NULL UNIQUE,
  display_name text NOT NULL,
  description text NULL,
  isolation_required boolean NOT NULL DEFAULT true,
  audit_required boolean NOT NULL DEFAULT true,
  fallback_allowed boolean NOT NULL DEFAULT false,
  status text NOT NULL DEFAULT 'active',
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now()
);

-- ------------------------------------------------------------
-- 6. secret_asset
-- ------------------------------------------------------------
CREATE TABLE IF NOT EXISTS "CX22073JW".secret_asset (
  secret_asset_id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  secret_asset_code text NOT NULL UNIQUE,
  secret_asset_category_id uuid NOT NULL,
  internal_title text NOT NULL,
  protected_summary text NULL,
  lifecycle_status text NOT NULL DEFAULT 'draft',
  isolation_status text NOT NULL DEFAULT 'isolated',
  storage_optimization_status text NULL,
  indexing_status text NULL,
  summarization_status text NULL,
  status text NOT NULL DEFAULT 'active',
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  CONSTRAINT fk_secret_asset_category
    FOREIGN KEY (secret_asset_category_id)
    REFERENCES "CX22073JW".secret_asset_category_master(secret_asset_category_id)
);

-- ------------------------------------------------------------
-- 7. secret_target_master
-- ------------------------------------------------------------
CREATE TABLE IF NOT EXISTS "CX22073JW".secret_target_master (
  secret_target_id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  secret_target_code text NOT NULL UNIQUE,
  secret_target_selector_id uuid NOT NULL,
  secret_asset_category_id uuid NULL,
  target_type text NOT NULL,
  display_name text NOT NULL,
  description text NULL,
  status text NOT NULL DEFAULT 'active',
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  CONSTRAINT fk_secret_target_selector
    FOREIGN KEY (secret_target_selector_id)
    REFERENCES "CX22073JW".secret_target_selector_master(secret_target_selector_id),
  CONSTRAINT fk_secret_target_category
    FOREIGN KEY (secret_asset_category_id)
    REFERENCES "CX22073JW".secret_asset_category_master(secret_asset_category_id)
);

-- ------------------------------------------------------------
-- 8. secret_route_binding
-- ------------------------------------------------------------
CREATE TABLE IF NOT EXISTS "CX22073JW".secret_route_binding (
  secret_route_binding_id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  secret_route_binding_code text NOT NULL UNIQUE,
  access_route_id uuid NOT NULL,
  privilege_tier_id uuid NOT NULL,
  secret_target_id uuid NOT NULL,
  binding_status text NOT NULL DEFAULT 'active',
  description text NULL,
  status text NOT NULL DEFAULT 'active',
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  CONSTRAINT fk_secret_route_binding_route
    FOREIGN KEY (access_route_id)
    REFERENCES "CX22073JW".access_route_master(access_route_id),
  CONSTRAINT fk_secret_route_binding_tier
    FOREIGN KEY (privilege_tier_id)
    REFERENCES "CX22073JW".privilege_tier_master(privilege_tier_id),
  CONSTRAINT fk_secret_route_binding_target
    FOREIGN KEY (secret_target_id)
    REFERENCES "CX22073JW".secret_target_master(secret_target_id),
  CONSTRAINT uq_secret_route_binding_triplet
    UNIQUE (access_route_id, privilege_tier_id, secret_target_id)
);

-- ------------------------------------------------------------
-- 9. privileged_route_policy_binding
-- ------------------------------------------------------------
CREATE TABLE IF NOT EXISTS "CX22073JW".privileged_route_policy_binding (
  privileged_route_policy_binding_id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  privileged_route_policy_binding_code text NOT NULL UNIQUE,
  access_route_id uuid NOT NULL,
  privilege_tier_id uuid NOT NULL,
  secret_target_selector_id uuid NOT NULL,
  privileged_policy_profile_id uuid NOT NULL,
  status text NOT NULL DEFAULT 'active',
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  CONSTRAINT fk_prpb_route
    FOREIGN KEY (access_route_id)
    REFERENCES "CX22073JW".access_route_master(access_route_id),
  CONSTRAINT fk_prpb_tier
    FOREIGN KEY (privilege_tier_id)
    REFERENCES "CX22073JW".privilege_tier_master(privilege_tier_id),
  CONSTRAINT fk_prpb_selector
    FOREIGN KEY (secret_target_selector_id)
    REFERENCES "CX22073JW".secret_target_selector_master(secret_target_selector_id),
  CONSTRAINT fk_prpb_policy
    FOREIGN KEY (privileged_policy_profile_id)
    REFERENCES "CX22073JW".privileged_policy_profile(privileged_policy_profile_id),
  CONSTRAINT uq_prpb_tuple
    UNIQUE (access_route_id, privilege_tier_id, secret_target_selector_id)
);

-- ------------------------------------------------------------
-- 10. privileged_access_audit_log
-- ------------------------------------------------------------
CREATE TABLE IF NOT EXISTS "CX22073JW".privileged_access_audit_log (
  privileged_access_audit_log_id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  access_route_id uuid NOT NULL,
  privilege_tier_id uuid NULL,
  secret_target_selector_id uuid NULL,
  secret_target_id uuid NULL,
  decision_status text NOT NULL,
  reason_code text NOT NULL,
  requested_at timestamptz NOT NULL,
  resolved_at timestamptz NULL,
  status text NOT NULL DEFAULT 'active',
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  CONSTRAINT fk_paal_route
    FOREIGN KEY (access_route_id)
    REFERENCES "CX22073JW".access_route_master(access_route_id),
  CONSTRAINT fk_paal_tier
    FOREIGN KEY (privilege_tier_id)
    REFERENCES "CX22073JW".privilege_tier_master(privilege_tier_id),
  CONSTRAINT fk_paal_selector
    FOREIGN KEY (secret_target_selector_id)
    REFERENCES "CX22073JW".secret_target_selector_master(secret_target_selector_id),
  CONSTRAINT fk_paal_target
    FOREIGN KEY (secret_target_id)
    REFERENCES "CX22073JW".secret_target_master(secret_target_id)
);

-- ------------------------------------------------------------
-- 11. indexes
-- ------------------------------------------------------------
CREATE INDEX IF NOT EXISTS idx_secret_asset_category_id
  ON "CX22073JW".secret_asset(secret_asset_category_id);

CREATE INDEX IF NOT EXISTS idx_secret_target_selector_id
  ON "CX22073JW".secret_target_master(secret_target_selector_id);

CREATE INDEX IF NOT EXISTS idx_secret_target_category_id
  ON "CX22073JW".secret_target_master(secret_asset_category_id);

CREATE INDEX IF NOT EXISTS idx_secret_route_binding_route_tier
  ON "CX22073JW".secret_route_binding(access_route_id, privilege_tier_id);

CREATE INDEX IF NOT EXISTS idx_prpb_route_tier_selector
  ON "CX22073JW".privileged_route_policy_binding(access_route_id, privilege_tier_id, secret_target_selector_id);

CREATE INDEX IF NOT EXISTS idx_paal_requested_at
  ON "CX22073JW".privileged_access_audit_log(requested_at);

CREATE INDEX IF NOT EXISTS idx_paal_decision_status
  ON "CX22073JW".privileged_access_audit_log(decision_status);

CREATE INDEX IF NOT EXISTS idx_paal_reason_code
  ON "CX22073JW".privileged_access_audit_log(reason_code);
