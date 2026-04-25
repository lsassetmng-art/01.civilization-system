-- ============================================================
-- STATICART PHASE 1 : FILES AND METADATA
-- reviewer: Sato
-- ============================================================

create table if not exists staticart.asset_file (
  file_id uuid primary key,
  asset_id uuid not null,
  version_no integer not null,
  file_role staticart.file_role not null,
  storage_key text not null,
  mime_type text not null,
  file_size_bytes bigint not null check (file_size_bytes >= 0),
  sha256 text not null,
  page_count integer null check (page_count is null or page_count >= 0),
  width_px integer null check (width_px is null or width_px >= 0),
  height_px integer null check (height_px is null or height_px >= 0),
  duration_ms bigint null check (duration_ms is null or duration_ms >= 0),
  created_at timestamptz not null default now(),
  constraint asset_file_asset_version_fk
    foreign key (asset_id, version_no)
    references staticart.asset_version(asset_id, version_no)
    on delete cascade,
  constraint asset_file_role_uq
    unique (asset_id, version_no, file_role)
);

create table if not exists staticart.asset_localization (
  asset_id uuid not null,
  version_no integer not null,
  language_code text not null,
  title text not null,
  subtitle text null,
  short_description text null,
  long_description text null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  primary key (asset_id, version_no, language_code),
  constraint asset_localization_asset_version_fk
    foreign key (asset_id, version_no)
    references staticart.asset_version(asset_id, version_no)
    on delete cascade
);

create table if not exists staticart.asset_category_map (
  asset_id uuid not null references staticart.asset_master(asset_id) on delete cascade,
  category_id text not null,
  primary key (asset_id, category_id)
);

create table if not exists staticart.asset_tag_map (
  asset_id uuid not null references staticart.asset_master(asset_id) on delete cascade,
  tag_id text not null,
  primary key (asset_id, tag_id)
);

create index if not exists idx_staticart_asset_localization_lang
  on staticart.asset_localization (language_code);

create index if not exists idx_staticart_asset_category_map_category
  on staticart.asset_category_map (category_id);

create index if not exists idx_staticart_asset_tag_map_tag
  on staticart.asset_tag_map (tag_id);
