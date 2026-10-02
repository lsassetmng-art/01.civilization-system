-- ============================================================
-- KNOWLEDGE-DOMAIN-BRAIN-1 SAFE DDL DRAFT
-- NOT EXECUTED
-- DB_WRITE=NO
-- DDL_APPLY=NO
-- ============================================================

-- ------------------------------------------------------------
-- Responsibility
-- ------------------------------------------------------------
-- CX22073JW:
--   Non-agentic knowledge/reference brain.
--   Stores domain catalog, reference items, sources, cautions, quality rubrics.
--
-- AIWorkerOS:
--   Runtime control.
--   Stores robot read policy, usage evidence, analysis result, safety check,
--   quality review, and deliverable planning.
--
-- Apps:
--   Request/result/review metadata only.

-- ============================================================
-- 1. CX22073JW: knowledge domain catalog
-- ============================================================

create table if not exists cx22073jw.knowledge_domain_catalog (
  domain_code text primary key,
  domain_group_code text not null,
  display_name_ja text not null,
  display_name_en text not null,
  domain_summary text not null,
  default_reference_depth_code text not null default 'lightweight_reference',
  max_reference_depth_code text not null default 'verified_cx_canon',
  requires_human_review_default boolean not null default false,
  regulated_or_sensitive_default boolean not null default false,
  safety_boundary_summary text not null default '',
  is_active boolean not null default true,
  sort_order integer not null default 1000,
  metadata jsonb not null default '{}'::jsonb,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

-- ============================================================
-- 2. CX22073JW: knowledge reference item
-- ============================================================

create table if not exists cx22073jw.knowledge_reference_item (
  reference_item_id uuid primary key default gen_random_uuid(),
  domain_code text not null references cx22073jw.knowledge_domain_catalog(domain_code),
  item_code text not null,
  locale_code text not null default 'ja-JP',
  title text not null,
  short_summary text not null,
  body_markdown text not null,
  reference_depth_code text not null,
  verification_status text not null default 'draft',
  source_basis text not null default '',
  source_caution text not null default '',
  robot_use_summary text not null default '',
  commercial_use_caution text not null default '',
  rights_safety_caution text not null default '',
  human_review_requirement text not null default '',
  tags jsonb not null default '[]'::jsonb,
  metadata jsonb not null default '{}'::jsonb,
  is_active boolean not null default true,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  unique(domain_code, item_code, locale_code)
);

-- ============================================================
-- 3. CX22073JW: source/evidence
-- ============================================================

create table if not exists cx22073jw.knowledge_reference_source (
  reference_source_id uuid primary key default gen_random_uuid(),
  reference_item_id uuid not null references cx22073jw.knowledge_reference_item(reference_item_id),
  source_kind_code text not null,
  source_label text not null,
  source_locator text not null default '',
  source_note text not null default '',
  reliability_code text not null default 'unknown',
  checked_at timestamptz null,
  metadata jsonb not null default '{}'::jsonb,
  is_active boolean not null default true,
  created_at timestamptz not null default now()
);

-- ============================================================
-- 4. CX22073JW: cross-domain relation
-- ============================================================

create table if not exists cx22073jw.knowledge_domain_relation (
  relation_id uuid primary key default gen_random_uuid(),
  from_domain_code text not null references cx22073jw.knowledge_domain_catalog(domain_code),
  to_domain_code text not null references cx22073jw.knowledge_domain_catalog(domain_code),
  relation_code text not null,
  relation_summary text not null,
  usage_note text not null default '',
  is_active boolean not null default true,
  sort_order integer not null default 1000,
  metadata jsonb not null default '{}'::jsonb,
  created_at timestamptz not null default now(),
  unique(from_domain_code, to_domain_code, relation_code)
);

-- ============================================================
-- 5. CX22073JW: quality rubric
-- ============================================================

create table if not exists cx22073jw.knowledge_quality_rubric_reference (
  rubric_id uuid primary key default gen_random_uuid(),
  domain_code text not null references cx22073jw.knowledge_domain_catalog(domain_code),
  rubric_code text not null,
  display_name_ja text not null,
  display_name_en text not null default '',
  rubric_summary text not null,
  checklist_json jsonb not null default '[]'::jsonb,
  scoring_policy_json jsonb not null default '{}'::jsonb,
  human_review_requirement text not null default '',
  is_active boolean not null default true,
  sort_order integer not null default 1000,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  unique(domain_code, rubric_code)
);

-- ============================================================
-- 6. CX22073JW: safety/caution reference
-- ============================================================

create table if not exists cx22073jw.knowledge_safety_caution_reference (
  caution_id uuid primary key default gen_random_uuid(),
  domain_code text not null references cx22073jw.knowledge_domain_catalog(domain_code),
  caution_code text not null,
  severity_code text not null default 'medium',
  caution_title text not null,
  caution_summary text not null,
  boundary_action_hint text not null default '',
  human_review_required boolean not null default false,
  is_active boolean not null default true,
  metadata jsonb not null default '{}'::jsonb,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  unique(domain_code, caution_code)
);

-- ============================================================
-- 7. AIWorkerOS: robot domain capability
-- ============================================================

create table if not exists aiworker.robot_knowledge_domain_capability (
  capability_id uuid primary key default gen_random_uuid(),
  robot_model_code text not null,
  role_code text not null,
  domain_code text not null,
  max_reference_depth_code text not null default 'lightweight_reference',
  can_read boolean not null default true,
  can_analyze boolean not null default false,
  can_generate boolean not null default true,
  can_review_quality boolean not null default false,
  can_run_safety_check boolean not null default false,
  supported_media_types jsonb not null default '[]'::jsonb,
  supported_artifact_types jsonb not null default '[]'::jsonb,
  capability_tier_code text not null default 'standard',
  restriction_summary text not null default '',
  is_active boolean not null default true,
  metadata jsonb not null default '{}'::jsonb,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  unique(robot_model_code, role_code, domain_code)
);

-- ============================================================
-- 8. AIWorkerOS: robot read policy
-- ============================================================

create table if not exists aiworker.robot_knowledge_read_policy (
  read_policy_id uuid primary key default gen_random_uuid(),
  robot_model_code text not null,
  role_code text not null,
  domain_code text not null,
  allowed_reference_depth_code text not null,
  allowed_item_tags jsonb not null default '[]'::jsonb,
  denied_item_tags jsonb not null default '[]'::jsonb,
  require_source_backed boolean not null default false,
  require_verified_canon boolean not null default false,
  policy_summary text not null default '',
  is_active boolean not null default true,
  metadata jsonb not null default '{}'::jsonb,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  unique(robot_model_code, role_code, domain_code, allowed_reference_depth_code)
);

-- ============================================================
-- 9. AIWorkerOS: request knowledge usage
-- ============================================================

create table if not exists aiworker.request_knowledge_domain_usage (
  usage_id uuid primary key default gen_random_uuid(),
  request_id text not null,
  source_route_code text not null default '',
  robot_model_code text not null default '',
  role_code text not null default '',
  domain_code text not null,
  reference_depth_code text not null default '',
  used_reference_item_ids jsonb not null default '[]'::jsonb,
  usage_summary text not null default '',
  metadata jsonb not null default '{}'::jsonb,
  created_at timestamptz not null default now()
);

-- ============================================================
-- 10. AIWorkerOS: domain analysis result
-- ============================================================

create table if not exists aiworker.knowledge_domain_analysis_result (
  analysis_result_id uuid primary key default gen_random_uuid(),
  request_id text not null,
  domain_code text not null,
  source_material_ref text not null default '',
  source_material_kind_code text not null default '',
  analysis_status_code text not null default 'completed',
  analysis_summary text not null default '',
  structured_result_json jsonb not null default '{}'::jsonb,
  limitation_summary text not null default '',
  created_at timestamptz not null default now()
);

-- ============================================================
-- 11. AIWorkerOS: safety check result
-- ============================================================

create table if not exists aiworker.knowledge_domain_safety_check_result (
  safety_check_id uuid primary key default gen_random_uuid(),
  request_id text not null,
  domain_code text not null,
  safety_status_code text not null,
  risk_level_code text not null default 'unknown',
  check_summary text not null default '',
  required_human_review boolean not null default false,
  blocking_reason text not null default '',
  structured_result_json jsonb not null default '{}'::jsonb,
  created_at timestamptz not null default now()
);

-- ============================================================
-- 12. AIWorkerOS: quality review result
-- ============================================================

create table if not exists aiworker.knowledge_domain_quality_review_result (
  quality_review_id uuid primary key default gen_random_uuid(),
  request_id text not null,
  domain_code text not null,
  review_status_code text not null default 'completed',
  quality_level_code text not null default 'unknown',
  review_summary text not null default '',
  improvement_points jsonb not null default '[]'::jsonb,
  checklist_result_json jsonb not null default '{}'::jsonb,
  created_at timestamptz not null default now()
);

-- ============================================================
-- 13. AIWorkerOS: deliverable plan
-- ============================================================

create table if not exists aiworker.knowledge_domain_deliverable_plan (
  deliverable_plan_id uuid primary key default gen_random_uuid(),
  request_id text not null,
  domain_code text not null,
  deliverable_kind_code text not null,
  plan_status_code text not null default 'planned',
  deliverable_title text not null default '',
  deliverable_summary text not null default '',
  planned_files_json jsonb not null default '[]'::jsonb,
  review_requirements_json jsonb not null default '{}'::jsonb,
  metadata jsonb not null default '{}'::jsonb,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

-- ============================================================
-- 14. Candidate indexes
-- ============================================================

create index if not exists idx_kdc_group_active
  on cx22073jw.knowledge_domain_catalog(domain_group_code, is_active);

create index if not exists idx_kri_domain_active_depth
  on cx22073jw.knowledge_reference_item(domain_code, is_active, reference_depth_code);

create index if not exists idx_krs_item_active
  on cx22073jw.knowledge_reference_source(reference_item_id, is_active);

create index if not exists idx_kdr_from_domain
  on cx22073jw.knowledge_domain_relation(from_domain_code, is_active);

create index if not exists idx_aiw_rkdc_model_role_domain
  on aiworker.robot_knowledge_domain_capability(robot_model_code, role_code, domain_code, is_active);

create index if not exists idx_aiw_rkrp_model_role_domain
  on aiworker.robot_knowledge_read_policy(robot_model_code, role_code, domain_code, is_active);

create index if not exists idx_aiw_rkdu_request
  on aiworker.request_knowledge_domain_usage(request_id, domain_code);

create index if not exists idx_aiw_kdar_request
  on aiworker.knowledge_domain_analysis_result(request_id, domain_code);

create index if not exists idx_aiw_kdscr_request
  on aiworker.knowledge_domain_safety_check_result(request_id, domain_code);

create index if not exists idx_aiw_kdqrr_request
  on aiworker.knowledge_domain_quality_review_result(request_id, domain_code);

create index if not exists idx_aiw_kddp_request
  on aiworker.knowledge_domain_deliverable_plan(request_id, domain_code);
