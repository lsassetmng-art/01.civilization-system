-- ============================================================
-- STATICART PHASE 1 : ENTITLEMENT AND CONTINUITY
-- reviewer: Sato
-- ============================================================

create table if not exists staticart.user_asset_entitlement (
  user_id uuid not null,
  asset_id uuid not null references staticart.asset_master(asset_id) on delete cascade,
  has_owned_permanent boolean not null default false,
  has_subscription_access boolean not null default false,
  sample_available boolean not null default false,
  blocking_reason_code text null,
  effective_entitlement_state staticart.entitlement_state not null,
  last_external_transaction_id text null,
  computed_at timestamptz not null default now(),
  primary key (user_id, asset_id)
);

create table if not exists staticart.user_library_projection (
  user_id uuid not null,
  asset_id uuid not null references staticart.asset_master(asset_id) on delete cascade,
  visible_in_library boolean not null,
  visible_in_continue_reading boolean not null,
  visible_in_continue_viewing boolean not null,
  favorite_state boolean not null default false,
  downloadable_now boolean not null default false,
  last_opened_at timestamptz null,
  projection_refreshed_at timestamptz not null default now(),
  primary key (user_id, asset_id)
);

create table if not exists staticart.user_reader_progress (
  user_id uuid not null,
  asset_id uuid not null references staticart.asset_master(asset_id) on delete cascade,
  current_locator text not null,
  progress_percent numeric(5,2) not null check (progress_percent >= 0 and progress_percent <= 100),
  sync_version bigint not null check (sync_version >= 0),
  last_device_type text null,
  last_opened_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  primary key (user_id, asset_id)
);

create table if not exists staticart.user_viewer_progress (
  user_id uuid not null,
  asset_id uuid not null references staticart.asset_master(asset_id) on delete cascade,
  current_frame_ref text null,
  current_page_no integer null check (current_page_no is null or current_page_no >= 0),
  zoom_ratio numeric(8,4) null check (zoom_ratio is null or zoom_ratio > 0),
  sync_version bigint not null check (sync_version >= 0),
  last_device_type text null,
  last_opened_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  primary key (user_id, asset_id)
);

create table if not exists staticart.user_asset_annotation (
  annotation_id uuid primary key,
  user_id uuid not null,
  asset_id uuid not null references staticart.asset_master(asset_id) on delete cascade,
  annotation_type text not null check (annotation_type in ('bookmark', 'note', 'highlight')),
  locator text not null,
  payload_json jsonb not null default '{}'::jsonb,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists staticart.user_asset_favorite (
  user_id uuid not null,
  asset_id uuid not null references staticart.asset_master(asset_id) on delete cascade,
  created_at timestamptz not null default now(),
  primary key (user_id, asset_id)
);

create index if not exists idx_staticart_user_library_projection_opened
  on staticart.user_library_projection (user_id, last_opened_at desc);

create index if not exists idx_staticart_user_reader_progress_opened
  on staticart.user_reader_progress (user_id, last_opened_at desc);

create index if not exists idx_staticart_user_viewer_progress_opened
  on staticart.user_viewer_progress (user_id, last_opened_at desc);

create index if not exists idx_staticart_user_asset_annotation_user_asset
  on staticart.user_asset_annotation (user_id, asset_id, updated_at desc);
