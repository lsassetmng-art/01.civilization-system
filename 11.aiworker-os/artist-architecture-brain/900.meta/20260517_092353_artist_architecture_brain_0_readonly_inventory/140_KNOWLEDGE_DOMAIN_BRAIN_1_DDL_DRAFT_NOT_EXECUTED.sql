-- ============================================================
-- KNOWLEDGE-DOMAIN-BRAIN-1 DDL DRAFT
-- NOT EXECUTED
-- DB_WRITE=NO
-- DDL_APPLY=NO
-- ============================================================

-- ============================================================
-- Design principle
-- ============================================================
-- CX22073JW:
--   Non-agentic reference/data/brain foundation.
--   Stores reusable knowledge domain catalog, reference items,
--   source basis, caution notes, quality rubrics, and cross-domain relations.
--
-- AIWorkerOS:
--   Runtime execution/control layer.
--   Stores robot read policies, request usage evidence,
--   analysis results, safety checks, quality reviews, and deliverable plans.
--
-- Consuming apps:
--   Store request/result/review metadata only.
--   Do not own knowledge brain or execution control.

-- ============================================================
-- CX22073JW generic knowledge domain catalog
-- ============================================================

create table if not exists cx22073jw.knowledge_domain_catalog (
  domain_code text primary key,
  domain_group_code text not null,
  display_name_ja text not null,
  display_name_en text not null,
  domain_summary text not null,
  primary_owner_schema text not null default 'cx22073jw',
  execution_owner_schema text not null default 'aiworker',
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

comment on table cx22073jw.knowledge_domain_catalog is
'CX22073JW non-agentic knowledge domain catalog. Defines reusable brain domains such as artist, architecture, IT, manga, video, business, legal/safety, education, science, finance, HR, and history/culture.';

-- ============================================================
-- CX22073JW generic knowledge reference item
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
  valid_from date null,
  valid_to date null,
  is_active boolean not null default true,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  unique(domain_code, item_code, locale_code)
);

comment on table cx22073jw.knowledge_reference_item is
'CX22073JW reusable reference brain item. Stores detailed source-backed knowledge, cautions, robot-use summaries, and reference depth. It is not an execution table.';

-- ============================================================
-- CX22073JW source basis / evidence link
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

comment on table cx22073jw.knowledge_reference_source is
'Source basis/evidence metadata for CX knowledge reference items. Does not grant execution permission.';

-- ============================================================
-- CX22073JW cross-domain relation / bridge
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

comment on table cx22073jw.knowledge_domain_relation is
'Cross-domain bridge definition. Example: architecture uses artist for presentation style, manga uses writing_story and artist, video_creator uses artist/music/marketing/legal safety.';

-- ============================================================
-- CX22073JW reference item relation
-- ============================================================

create table if not exists cx22073jw.knowledge_reference_item_relation (
  item_relation_id uuid primary key default gen_random_uuid(),
  from_reference_item_id uuid not null references cx22073jw.knowledge_reference_item(reference_item_id),
  to_reference_item_id uuid not null references cx22073jw.knowledge_reference_item(reference_item_id),
  relation_code text not null,
  relation_summary text not null default '',
  is_active boolean not null default true,
  metadata jsonb not null default '{}'::jsonb,
  created_at timestamptz not null default now(),
  unique(from_reference_item_id, to_reference_item_id, relation_code)
);

comment on table cx22073jw.knowledge_reference_item_relation is
'Cross-reference between knowledge items. Used to connect history/culture/architecture/art/style/business/legal references without duplicating content.';

-- ============================================================
-- CX22073JW quality rubric reference
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

comment on table cx22073jw.knowledge_quality_rubric_reference is
'Reference quality rubrics for domain outputs. AIWorkerOS may use these as background, but runtime review results belong to AIWorkerOS.';

-- ============================================================
-- CX22073JW safety/caution reference
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

comment on table cx22073jw.knowledge_safety_caution_reference is
'Reference caution data for each knowledge domain. Runtime block/allow/escalation decisions belong to AIWorkerOS guardrail/safety logic.';

-- ============================================================
-- AIWorkerOS robot knowledge capability
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

comment on table aiworker.robot_knowledge_domain_capability is
'AIWorkerOS robot capability table. Defines which robot model/role can use each knowledge domain, at what depth, and for which operations.';

-- ============================================================
-- AIWorkerOS robot read policy
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

comment on table aiworker.robot_knowledge_read_policy is
'AIWorkerOS runtime read policy. Controls robot-specific CX knowledge access. CX stores the brain; AIWorkerOS decides what each robot may read.';

-- ============================================================
-- AIWorkerOS request domain usage evidence
-- ============================================================

create table if not exists aiworker.request_knowledge_domain_usage (
  usage_id uuid primary key default gen_random_uuid(),
  request_id uuid not null,
  source_route_code text not null default '',
  robot_model_code text not null default '',
  role_code text not null default '',
  domain_code text not null,
  reference_depth_code text not null default '',
  used_reference_item_ids jsonb not null default '[]'::jsonb,
  usage_summary text not null default '',
  usage_started_at timestamptz null,
  usage_finished_at timestamptz null,
  metadata jsonb not null default '{}'::jsonb,
  created_at timestamptz not null default now()
);

comment on table aiworker.request_knowledge_domain_usage is
'Runtime evidence of which knowledge domains and reference items were used for a request.';

-- ============================================================
-- AIWorkerOS generic domain analysis result
-- ============================================================

create table if not exists aiworker.knowledge_domain_analysis_result (
  analysis_result_id uuid primary key default gen_random_uuid(),
  request_id uuid not null,
  domain_code text not null,
  source_material_ref text not null default '',
  source_material_kind_code text not null default '',
  analysis_status_code text not null default 'completed',
  analysis_summary text not null default '',
  structured_result_json jsonb not null default '{}'::jsonb,
  limitation_summary text not null default '',
  created_at timestamptz not null default now()
);

comment on table aiworker.knowledge_domain_analysis_result is
'AIWorkerOS runtime analysis result for source material or task context, across domains such as artist, architecture, IT, manga, and video.';

-- ============================================================
-- AIWorkerOS generic safety check result
-- ============================================================

create table if not exists aiworker.knowledge_domain_safety_check_result (
  safety_check_id uuid primary key default gen_random_uuid(),
  request_id uuid not null,
  domain_code text not null,
  safety_status_code text not null,
  risk_level_code text not null default 'unknown',
  check_summary text not null default '',
  required_human_review boolean not null default false,
  blocking_reason text not null default '',
  structured_result_json jsonb not null default '{}'::jsonb,
  created_at timestamptz not null default now()
);

comment on table aiworker.knowledge_domain_safety_check_result is
'AIWorkerOS runtime safety/caution result. Reference cautions may come from CX, but execution decisions are AIWorkerOS responsibility.';

-- ============================================================
-- AIWorkerOS generic quality review result
-- ============================================================

create table if not exists aiworker.knowledge_domain_quality_review_result (
  quality_review_id uuid primary key default gen_random_uuid(),
  request_id uuid not null,
  domain_code text not null,
  review_status_code text not null default 'completed',
  quality_level_code text not null default 'unknown',
  review_summary text not null default '',
  improvement_points jsonb not null default '[]'::jsonb,
  checklist_result_json jsonb not null default '{}'::jsonb,
  created_at timestamptz not null default now()
);

comment on table aiworker.knowledge_domain_quality_review_result is
'AIWorkerOS runtime quality review result for generated deliverables and analysis outputs.';

-- ============================================================
-- AIWorkerOS generic deliverable plan
-- ============================================================

create table if not exists aiworker.knowledge_domain_deliverable_plan (
  deliverable_plan_id uuid primary key default gen_random_uuid(),
  request_id uuid not null,
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

comment on table aiworker.knowledge_domain_deliverable_plan is
'AIWorkerOS generic deliverable planning table for domain-aware output packages. Actual artifact/zip ownership remains with AIWorkerOS deliverable mechanism.';

-- ============================================================
-- Candidate indexes
-- ============================================================

create index if not exists idx_kdc_group_active
  on cx22073jw.knowledge_domain_catalog(domain_group_code, is_active);

create index if not exists idx_kri_domain_active_depth
  on cx22073jw.knowledge_reference_item(domain_code, is_active, reference_depth_code);

create index if not exists idx_kri_title
  on cx22073jw.knowledge_reference_item(domain_code, title);

create index if not exists idx_krs_item_active
  on cx22073jw.knowledge_reference_source(reference_item_id, is_active);

create index if not exists idx_kdr_from_domain
  on cx22073jw.knowledge_domain_relation(from_domain_code, is_active);

create index if not exists idx_kdr_to_domain
  on cx22073jw.knowledge_domain_relation(to_domain_code, is_active);

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
