-- ============================================================
-- STATIC ART OS PERSONA REFERENCE SQL EXACT DDL
-- ============================================================
--
-- status: active-exact-ddl
-- system: StaticArtOS
-- owner: Boss
-- prepared_by: Zero
--
-- IMPORTANT:
-- - This DDL is design-authoritative for the Persona reference layer.
-- - It is not executed by this file generation step.
-- - Persona canonical mutable state remains outside StaticArtOS.
-- - StaticArtOS is signed-snapshot-consumption only.
--
-- ASSUMPTION NOTE:
-- - External asset canonical table exact name is not frozen in this pack.
-- - Therefore this DDL avoids hard FK to an external asset master table.
-- - Internal FK between Persona-reference tables is defined where safe.
--
-- REQUIRED EXTENSION NOTE:
-- - gen_random_uuid() requires pgcrypto in many PostgreSQL setups.
-- - Enable separately if needed:
--   create extension if not exists pgcrypto;

begin;

create schema if not exists staticart;

-- ============================================================
-- 1. asset_creator_persona_ref
-- ============================================================

create table if not exists staticart.asset_creator_persona_ref (
  asset_id uuid primary key,
  persona_id uuid not null,
  relationship_role text not null default 'creator',
  linked_at timestamptz not null default now(),
  source_event_id uuid not null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),

  constraint uq_asset_creator_persona_ref_asset_persona
    unique (asset_id, persona_id),

  constraint ck_asset_creator_persona_ref_relationship_role
    check (relationship_role in ('creator'))
);

create index if not exists idx_asset_creator_persona_ref_persona_id
  on staticart.asset_creator_persona_ref (persona_id);

create index if not exists idx_asset_creator_persona_ref_source_event_id
  on staticart.asset_creator_persona_ref (source_event_id);

-- ============================================================
-- 2. asset_creator_signed_snapshot_ref
-- ============================================================

create table if not exists staticart.asset_creator_signed_snapshot_ref (
  asset_id uuid primary key,
  persona_id uuid not null,
  snapshot_id uuid not null,
  signed_snapshot_id uuid not null,
  applied_snapshot_id uuid not null,
  target_surface text not null default 'creator_profile',
  applied_at timestamptz not null,
  expires_at timestamptz null,
  result_code text not null,
  source_event_id uuid not null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),

  constraint uq_asset_creator_signed_snapshot_ref_source_event
    unique (source_event_id, asset_id, target_surface),

  constraint ck_asset_creator_signed_snapshot_ref_target_surface
    check (target_surface in ('creator_profile')),

  constraint ck_asset_creator_signed_snapshot_ref_result_code
    check (result_code in ('applied', 'expired', 'superseded')),

  constraint fk_asset_creator_signed_snapshot_ref_asset_id
    foreign key (asset_id)
    references staticart.asset_creator_persona_ref (asset_id)
    on delete cascade
);

create index if not exists idx_asset_creator_signed_snapshot_ref_persona_id
  on staticart.asset_creator_signed_snapshot_ref (persona_id);

create index if not exists idx_asset_creator_signed_snapshot_ref_signed_snapshot_id
  on staticart.asset_creator_signed_snapshot_ref (signed_snapshot_id);

create index if not exists idx_asset_creator_signed_snapshot_ref_expires_at
  on staticart.asset_creator_signed_snapshot_ref (expires_at);

-- ============================================================
-- 3. asset_public_display_snapshot_ref
-- ============================================================

create table if not exists staticart.asset_public_display_snapshot_ref (
  asset_id uuid primary key,
  persona_id uuid not null,
  signed_snapshot_id uuid not null,
  display_mode text not null default 'public_asset_detail',
  applied_at timestamptz not null,
  expires_at timestamptz null,
  result_code text not null,
  source_event_id uuid not null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),

  constraint uq_asset_public_display_snapshot_ref_source_event
    unique (source_event_id, asset_id, display_mode),

  constraint ck_asset_public_display_snapshot_ref_display_mode
    check (display_mode in ('public_asset_detail')),

  constraint ck_asset_public_display_snapshot_ref_result_code
    check (result_code in ('applied', 'expired', 'superseded')),

  constraint fk_asset_public_display_snapshot_ref_asset_id
    foreign key (asset_id)
    references staticart.asset_creator_persona_ref (asset_id)
    on delete cascade
);

create index if not exists idx_asset_public_display_snapshot_ref_persona_id
  on staticart.asset_public_display_snapshot_ref (persona_id);

create index if not exists idx_asset_public_display_snapshot_ref_signed_snapshot_id
  on staticart.asset_public_display_snapshot_ref (signed_snapshot_id);

create index if not exists idx_asset_public_display_snapshot_ref_expires_at
  on staticart.asset_public_display_snapshot_ref (expires_at);

-- ============================================================
-- 4. asset_exhibition_display_snapshot_ref
-- ============================================================

create table if not exists staticart.asset_exhibition_display_snapshot_ref (
  asset_id uuid primary key,
  persona_id uuid not null,
  signed_snapshot_id uuid not null,
  display_mode text not null default 'exhibition_display',
  applied_at timestamptz not null,
  expires_at timestamptz null,
  result_code text not null,
  source_event_id uuid not null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),

  constraint uq_asset_exhibition_display_snapshot_ref_source_event
    unique (source_event_id, asset_id, display_mode),

  constraint ck_asset_exhibition_display_snapshot_ref_display_mode
    check (display_mode in ('exhibition_display')),

  constraint ck_asset_exhibition_display_snapshot_ref_result_code
    check (result_code in ('applied', 'expired', 'superseded')),

  constraint fk_asset_exhibition_display_snapshot_ref_asset_id
    foreign key (asset_id)
    references staticart.asset_creator_persona_ref (asset_id)
    on delete cascade
);

create index if not exists idx_asset_exhibition_display_snapshot_ref_persona_id
  on staticart.asset_exhibition_display_snapshot_ref (persona_id);

create index if not exists idx_asset_exhibition_display_snapshot_ref_signed_snapshot_id
  on staticart.asset_exhibition_display_snapshot_ref (signed_snapshot_id);

create index if not exists idx_asset_exhibition_display_snapshot_ref_expires_at
  on staticart.asset_exhibition_display_snapshot_ref (expires_at);

-- ============================================================
-- 5. asset_persona_applied_snapshot_history
-- ============================================================

create table if not exists staticart.asset_persona_applied_snapshot_history (
  history_id uuid primary key default gen_random_uuid(),
  asset_id uuid not null,
  persona_id uuid not null,
  snapshot_id uuid null,
  signed_snapshot_id uuid null,
  target_surface text not null,
  applied_reason_code text not null,
  applied_at timestamptz not null,
  result_code text not null,
  source_event_id uuid not null,
  created_at timestamptz not null default now(),

  constraint uq_asset_persona_applied_snapshot_history_source_event
    unique (source_event_id, asset_id, target_surface),

  constraint ck_asset_persona_applied_snapshot_history_target_surface
    check (target_surface in ('creator_profile', 'public_asset_detail', 'exhibition_display')),

  constraint fk_asset_persona_applied_snapshot_history_asset_id
    foreign key (asset_id)
    references staticart.asset_creator_persona_ref (asset_id)
    on delete cascade
);

create index if not exists idx_asset_persona_applied_snapshot_history_asset_applied_at
  on staticart.asset_persona_applied_snapshot_history (asset_id, applied_at desc);

create index if not exists idx_asset_persona_applied_snapshot_history_persona_id
  on staticart.asset_persona_applied_snapshot_history (persona_id);

create index if not exists idx_asset_persona_applied_snapshot_history_signed_snapshot_id
  on staticart.asset_persona_applied_snapshot_history (signed_snapshot_id);

-- ============================================================
-- 6. asset_local_view_config
-- ============================================================

create table if not exists staticart.asset_local_view_config (
  asset_id uuid primary key,
  persona_id uuid not null,
  local_view_config_json jsonb not null default '{}'::jsonb,
  updated_by_actor_id uuid null,
  updated_at timestamptz not null default now(),

  constraint fk_asset_local_view_config_asset_id
    foreign key (asset_id)
    references staticart.asset_creator_persona_ref (asset_id)
    on delete cascade,

  constraint ck_asset_local_view_config_json_object
    check (jsonb_typeof(local_view_config_json) = 'object')
);

create index if not exists idx_asset_local_view_config_persona_id
  on staticart.asset_local_view_config (persona_id);

-- ============================================================
-- 7. asset_creator_display_projection
-- ============================================================

create table if not exists staticart.asset_creator_display_projection (
  asset_id uuid not null,
  persona_id uuid not null,
  signed_snapshot_id uuid not null,
  target_surface text not null,
  display_name text not null,
  profile_card_summary text null,
  avatar_render_ref text null,
  projection_generated_at timestamptz not null,
  projection_version integer not null default 1,
  source_event_id uuid not null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),

  constraint pk_asset_creator_display_projection
    primary key (asset_id, target_surface),

  constraint uq_asset_creator_display_projection_source_event
    unique (source_event_id, signed_snapshot_id, target_surface),

  constraint ck_asset_creator_display_projection_target_surface
    check (target_surface in ('creator_profile', 'public_asset_detail', 'exhibition_display')),

  constraint ck_asset_creator_display_projection_version_positive
    check (projection_version >= 1),

  constraint fk_asset_creator_display_projection_asset_id
    foreign key (asset_id)
    references staticart.asset_creator_persona_ref (asset_id)
    on delete cascade
);

create index if not exists idx_asset_creator_display_projection_persona_id
  on staticart.asset_creator_display_projection (persona_id);

create index if not exists idx_asset_creator_display_projection_signed_snapshot_id
  on staticart.asset_creator_display_projection (signed_snapshot_id);

create index if not exists idx_asset_creator_display_projection_generated_at
  on staticart.asset_creator_display_projection (projection_generated_at desc);

-- ============================================================
-- 8. OPTIONAL HELPER COMMENTS
-- ============================================================

comment on table staticart.asset_creator_persona_ref is
'StaticArt creator-to-persona reference only. No Persona canonical truth.';

comment on table staticart.asset_creator_signed_snapshot_ref is
'Current creator-profile signed snapshot reference only.';

comment on table staticart.asset_public_display_snapshot_ref is
'Current public asset detail signed snapshot reference only.';

comment on table staticart.asset_exhibition_display_snapshot_ref is
'Current exhibition display signed snapshot reference only.';

comment on table staticart.asset_persona_applied_snapshot_history is
'StaticArt-side reflection history for Persona signed snapshot results.';

comment on table staticart.asset_local_view_config is
'Presentation-only local view config. Must not store Persona mutable truth.';

comment on table staticart.asset_creator_display_projection is
'Rebuildable display-safe projection only. Not Persona canonical truth.';

commit;
