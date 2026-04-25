-- ============================================================
-- STATICART PHASE 1 : PROJECTION TABLES
-- reviewer: Sato
-- ============================================================

create table if not exists staticart.asset_exhibition_projection (
  asset_id uuid primary key references staticart.asset_master(asset_id) on delete cascade,
  version_no integer not null,
  projection_status staticart.projection_status not null,
  usable_in_exhibition_builder boolean not null,
  entitlement_state staticart.entitlement_state not null,
  exhibition_allowed boolean not null,
  additional_license_required boolean not null,
  price_label text null,
  rights_summary text null,
  reason_codes text[] not null default '{}',
  projection_refreshed_at timestamptz not null default now(),
  constraint asset_exhibition_projection_asset_version_fk
    foreign key (asset_id, version_no)
    references staticart.asset_version(asset_id, version_no)
    on delete cascade
);

create index if not exists idx_staticart_asset_exhibition_projection_status
  on staticart.asset_exhibition_projection (projection_status, projection_refreshed_at desc);

-- IMPORTANT:
-- This table is derived.
-- Downstream consumers must not treat it as canonical write source.
