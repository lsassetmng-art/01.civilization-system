-- ============================================================
-- STATICART PHASE 1 : ASSET MASTER
-- reviewer: Sato
-- ============================================================

create table if not exists staticart.asset_master (
  asset_id uuid primary key,
  asset_code text not null unique,
  asset_type staticart.asset_type not null,
  creator_id uuid not null,
  publisher_id uuid null,
  current_version_no integer not null check (current_version_no >= 1),
  lifecycle_state staticart.lifecycle_state not null,
  is_current_version_visible boolean not null default false,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  archived_at timestamptz null,
  constraint asset_master_archived_state_ck
    check (
      archived_at is null
      or lifecycle_state = 'archived'
    )
);

create index if not exists idx_staticart_asset_master_creator_lifecycle
  on staticart.asset_master (creator_id, lifecycle_state);

create index if not exists idx_staticart_asset_master_type_lifecycle
  on staticart.asset_master (asset_type, lifecycle_state);
