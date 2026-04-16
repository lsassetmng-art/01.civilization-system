-- ============================================================
-- scenario CORE APPLY READY V1
-- source: 120013_SCENARIO_CORE_DDL_DRAFT.sql
-- note: reviewed apply-ready bundle, not auto-executed
-- ============================================================

create schema if not exists "scenario";

create extension if not exists pgcrypto;

create table if not exists "scenario".scenario_master (
  scenario_master_id uuid primary key default gen_random_uuid(),
  scenario_code text not null unique,
  display_name text not null,
  summary text null,
  canonical_article_id uuid null,
  publish_status text not null,
  status text not null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists "scenario".scenario_version (
  scenario_version_id uuid primary key default gen_random_uuid(),
  scenario_master_id uuid not null references "scenario".scenario_master(scenario_master_id),
  scenario_version_code text not null unique,
  version_no integer not null,
  release_status text not null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists "scenario".scenario_chapter (
  scenario_chapter_id uuid primary key default gen_random_uuid(),
  scenario_version_id uuid not null references "scenario".scenario_version(scenario_version_id),
  chapter_code text not null unique,
  chapter_no integer not null,
  display_name text not null,
  summary text null,
  status text not null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists "scenario".scenario_scene (
  scenario_scene_id uuid primary key default gen_random_uuid(),
  scenario_version_id uuid not null references "scenario".scenario_version(scenario_version_id),
  scenario_chapter_id uuid null references "scenario".scenario_chapter(scenario_chapter_id),
  scene_code text not null unique,
  scene_no integer not null,
  display_name text not null,
  scene_type text not null,
  playback_text text null,
  next_scene_code text null,
  status text not null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists "scenario".scenario_scene_node (
  scenario_scene_node_id uuid primary key default gen_random_uuid(),
  scenario_scene_id uuid not null references "scenario".scenario_scene(scenario_scene_id),
  node_no integer not null,
  node_type text not null,
  display_text text null,
  payload_json jsonb null,
  status text not null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  unique (scenario_scene_id, node_no)
);

create table if not exists "scenario".scenario_choice (
  scenario_choice_id uuid primary key default gen_random_uuid(),
  scenario_scene_id uuid not null references "scenario".scenario_scene(scenario_scene_id),
  choice_code text not null unique,
  choice_no integer not null,
  display_text text not null,
  next_scene_code text null,
  status text not null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists "scenario".scenario_branch_rule (
  scenario_branch_rule_id uuid primary key default gen_random_uuid(),
  branch_rule_code text not null unique,
  scenario_scene_id uuid not null references "scenario".scenario_scene(scenario_scene_id),
  condition_type text not null,
  condition_json jsonb not null,
  pass_next_scene_code text null,
  fail_next_scene_code text null,
  status text not null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists "scenario".scenario_trigger (
  scenario_trigger_id uuid primary key default gen_random_uuid(),
  trigger_code text not null unique,
  scenario_scene_id uuid not null references "scenario".scenario_scene(scenario_scene_id),
  trigger_type text not null,
  trigger_payload_json jsonb null,
  status text not null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists "scenario".scenario_playback_profile (
  scenario_playback_profile_id uuid primary key default gen_random_uuid(),
  playback_profile_code text not null unique,
  display_name text not null,
  description text null,
  playback_json jsonb null,
  status text not null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists "scenario".scenario_character_binding (
  scenario_character_binding_id uuid primary key default gen_random_uuid(),
  scenario_scene_id uuid not null references "scenario".scenario_scene(scenario_scene_id),
  character_entity_id uuid not null,
  role_in_scene text not null,
  status text not null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists "scenario".scenario_event_binding (
  scenario_event_binding_id uuid primary key default gen_random_uuid(),
  scenario_scene_id uuid not null references "scenario".scenario_scene(scenario_scene_id),
  timeline_event_id uuid not null,
  binding_role text not null,
  status text not null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists "scenario".scenario_asset_binding (
  scenario_asset_binding_id uuid primary key default gen_random_uuid(),
  scenario_scene_id uuid not null references "scenario".scenario_scene(scenario_scene_id),
  asset_code text not null,
  asset_role text not null,
  sort_order integer not null default 0,
  status text not null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists "scenario".scenario_progress_rule (
  scenario_progress_rule_id uuid primary key default gen_random_uuid(),
  progress_rule_code text not null unique,
  scenario_version_id uuid not null references "scenario".scenario_version(scenario_version_id),
  rule_type text not null,
  rule_json jsonb not null,
  status text not null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create index if not exists idx_cx22073jw_sinario_scenario_version_master_id
  on "scenario".scenario_version(scenario_master_id);
create index if not exists idx_cx22073jw_sinario_scenario_chapter_version_id
  on "scenario".scenario_chapter(scenario_version_id);
create index if not exists idx_cx22073jw_sinario_scenario_scene_version_id
  on "scenario".scenario_scene(scenario_version_id);
create index if not exists idx_cx22073jw_sinario_scenario_scene_chapter_id
  on "scenario".scenario_scene(scenario_chapter_id);
create index if not exists idx_cx22073jw_sinario_scenario_choice_scene_id
  on "scenario".scenario_choice(scenario_scene_id);
create index if not exists idx_cx22073jw_sinario_scenario_character_binding_scene_id
  on "scenario".scenario_character_binding(scenario_scene_id);
create index if not exists idx_cx22073jw_sinario_scenario_event_binding_scene_id
  on "scenario".scenario_event_binding(scenario_scene_id);
