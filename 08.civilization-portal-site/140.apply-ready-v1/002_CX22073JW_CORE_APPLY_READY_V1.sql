-- ============================================================
-- CX22073JW CORE APPLY READY V1
-- source: 120012_CX22073JW_CORE_AND_CHARACTER_PROFILE_DDL_DRAFT.sql
-- note: reviewed apply-ready bundle, not auto-executed
-- ============================================================

create schema if not exists "CX22073JW";

create extension if not exists pgcrypto;

create table if not exists "CX22073JW".domain_master (
  domain_id uuid primary key default gen_random_uuid(),
  domain_code text not null unique,
  display_name text not null,
  description text null,
  sort_order integer not null default 0,
  status text not null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists "CX22073JW".space_master (
  space_id uuid primary key default gen_random_uuid(),
  domain_id uuid not null references "CX22073JW".domain_master(domain_id),
  space_code text not null unique,
  display_name text not null,
  description text null,
  locale_code text null,
  default_answer_style_profile_code text null,
  default_safety_policy_profile_code text null,
  publish_status text not null,
  status text not null,
  sort_order integer not null default 0,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists "CX22073JW".scope_master (
  scope_id uuid primary key default gen_random_uuid(),
  space_id uuid not null references "CX22073JW".space_master(space_id),
  scope_code text not null unique,
  display_name text not null,
  description text null,
  scope_level text not null,
  query_hint text null,
  is_default boolean not null default false,
  publish_status text not null,
  status text not null,
  sort_order integer not null default 0,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists "CX22073JW".article (
  article_id uuid primary key default gen_random_uuid(),
  space_id uuid not null references "CX22073JW".space_master(space_id),
  article_code text not null unique,
  article_type text not null,
  title text not null,
  summary text null,
  body_markdown text not null,
  locale_code text null,
  source_kind text null,
  trust_level text null,
  publish_status text not null,
  visibility_status text not null,
  effective_from timestamptz null,
  effective_to timestamptz null,
  version_no integer not null default 1,
  status text not null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists "CX22073JW".chunk (
  chunk_id uuid primary key default gen_random_uuid(),
  article_id uuid not null references "CX22073JW".article(article_id),
  chunk_no integer not null,
  chunk_title text null,
  chunk_text text not null,
  chunk_summary text null,
  token_estimate integer null,
  embedding_status text not null,
  publish_status text not null,
  status text not null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  unique (article_id, chunk_no)
);

create table if not exists "CX22073JW".faq (
  faq_id uuid primary key default gen_random_uuid(),
  space_id uuid not null references "CX22073JW".space_master(space_id),
  faq_code text not null unique,
  question_text text not null,
  short_answer_text text not null,
  long_answer_article_id uuid null references "CX22073JW".article(article_id),
  locale_code text null,
  priority_no integer not null default 0,
  publish_status text not null,
  status text not null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists "CX22073JW".caller_master (
  caller_id uuid primary key default gen_random_uuid(),
  caller_code text not null unique,
  caller_type text not null,
  display_name text not null,
  description text null,
  owner_domain_code text null,
  owner_target_code text null,
  default_space_code text null,
  default_scope_code text null,
  status text not null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists "CX22073JW".caller_scope_binding (
  caller_scope_binding_id uuid primary key default gen_random_uuid(),
  caller_id uuid not null references "CX22073JW".caller_master(caller_id),
  scope_id uuid not null references "CX22073JW".scope_master(scope_id),
  is_default boolean not null default false,
  priority_no integer not null default 0,
  access_mode text not null,
  status text not null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  unique (caller_id, scope_id)
);

create table if not exists "CX22073JW".disclaimer_master (
  disclaimer_id uuid primary key default gen_random_uuid(),
  disclaimer_code text not null unique,
  display_name text not null,
  body_text text not null,
  locale_code text null,
  disclaimer_type text not null,
  publish_status text not null,
  status text not null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists "CX22073JW".route_policy (
  route_policy_id uuid primary key default gen_random_uuid(),
  route_policy_code text not null unique,
  caller_id uuid not null unique references "CX22073JW".caller_master(caller_id),
  primary_scope_id uuid null references "CX22073JW".scope_master(scope_id),
  fallback_scope_id uuid null references "CX22073JW".scope_master(scope_id),
  answer_style_profile_code text null,
  safety_policy_profile_code text null,
  disclaimer_code text null,
  escalation_required boolean not null default false,
  status text not null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists "CX22073JW".entity_master (
  entity_id uuid primary key default gen_random_uuid(),
  entity_code text not null unique,
  entity_type text not null,
  display_name text not null,
  summary text null,
  canonical_article_id uuid null references "CX22073JW".article(article_id),
  status text not null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists "CX22073JW".character_profile (
  character_profile_id uuid primary key default gen_random_uuid(),
  entity_id uuid not null unique references "CX22073JW".entity_master(entity_id),
  character_code text not null unique,
  display_name text not null,
  official_name text null,
  short_bio text null,
  character_type text not null,
  origin_type text not null,
  gender_code text null,
  species_type text null,
  role_title text null,
  occupation_code text null,
  affiliation_country_code text null,
  affiliation_company_code text null,
  affiliation_org_code text null,
  rank_or_position text null,
  age integer null,
  birth_year integer null,
  birth_year_precision text null,
  death_year integer null,
  death_year_precision text null,
  era_label text null,
  life_status text not null,
  importance_level text null,
  portrait_asset_id uuid null,
  canonical_article_id uuid null references "CX22073JW".article(article_id),
  public_status text not null,
  status text not null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create index if not exists idx_cx22073jw_space_master_domain_id on "CX22073JW".space_master(domain_id);
create index if not exists idx_cx22073jw_scope_master_space_id on "CX22073JW".scope_master(space_id);
create index if not exists idx_cx22073jw_article_space_id on "CX22073JW".article(space_id);
create index if not exists idx_cx22073jw_chunk_article_id on "CX22073JW".chunk(article_id);
create index if not exists idx_cx22073jw_faq_space_id on "CX22073JW".faq(space_id);
create index if not exists idx_cx22073jw_caller_scope_binding_caller_id on "CX22073JW".caller_scope_binding(caller_id);
create index if not exists idx_cx22073jw_caller_scope_binding_scope_id on "CX22073JW".caller_scope_binding(scope_id);
create index if not exists idx_cx22073jw_route_policy_primary_scope_id on "CX22073JW".route_policy(primary_scope_id);
create index if not exists idx_cx22073jw_entity_master_canonical_article_id on "CX22073JW".entity_master(canonical_article_id);
create index if not exists idx_cx22073jw_character_profile_canonical_article_id on "CX22073JW".character_profile(canonical_article_id);
