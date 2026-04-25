-- ============================================================
-- STATICART PHASE 1 : ASSET VERSION
-- reviewer: Sato
-- ============================================================

create table if not exists staticart.asset_version (
  asset_id uuid not null references staticart.asset_master(asset_id) on delete cascade,
  version_no integer not null,
  version_label text null,
  is_visible boolean not null default false,
  is_replace_target boolean not null default false,
  published_at timestamptz null,
  created_at timestamptz not null default now(),
  created_by uuid not null,
  primary key (asset_id, version_no)
);

create unique index if not exists uq_staticart_asset_version_one_visible
  on staticart.asset_version (asset_id)
  where is_visible = true;
