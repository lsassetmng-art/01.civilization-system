-- ============================================================
-- STATICART PHASE 1 : SCHEMA AND ENUMS
-- reviewer: Sato
-- ============================================================

create schema if not exists staticart;

do $$
begin
  if not exists (
    select 1 from pg_type t
    join pg_namespace n on n.oid = t.typnamespace
    where t.typname = 'asset_type' and n.nspname = 'staticart'
  ) then
    create type staticart.asset_type as enum (
      'artwork',
      'illustration',
      'poster',
      'photo_art',
      'static_visual',
      'book',
      'ebook',
      'booklet',
      'catalog',
      'collection_book',
      'material_booklet'
    );
  end if;
end
$$;

do $$
begin
  if not exists (
    select 1 from pg_type t
    join pg_namespace n on n.oid = t.typnamespace
    where t.typname = 'lifecycle_state' and n.nspname = 'staticart'
  ) then
    create type staticart.lifecycle_state as enum (
      'draft',
      'files_uploaded',
      'metadata_completed',
      'self_check_passed',
      'review_pending',
      'approved',
      'rejected',
      'published_marketplace',
      'published_library_only',
      'delisted',
      'restricted',
      'replaced',
      'archived'
    );
  end if;
end
$$;

do $$
begin
  if not exists (
    select 1 from pg_type t
    join pg_namespace n on n.oid = t.typnamespace
    where t.typname = 'sales_state' and n.nspname = 'staticart'
  ) then
    create type staticart.sales_state as enum (
      'not_for_sale',
      'for_sale',
      'preorder',
      'sale_paused',
      'sold_out_limited',
      'sale_ended'
    );
  end if;
end
$$;

do $$
begin
  if not exists (
    select 1 from pg_type t
    join pg_namespace n on n.oid = t.typnamespace
    where t.typname = 'subscription_state' and n.nspname = 'staticart'
  ) then
    create type staticart.subscription_state as enum (
      'not_included',
      'included_scheduled',
      'included_active',
      'included_paused',
      'included_ended'
    );
  end if;
end
$$;

do $$
begin
  if not exists (
    select 1 from pg_type t
    join pg_namespace n on n.oid = t.typnamespace
    where t.typname = 'entitlement_state' and n.nspname = 'staticart'
  ) then
    create type staticart.entitlement_state as enum (
      'none',
      'sample_only',
      'subscription_access',
      'owned_permanent',
      'owned_and_subscription_access',
      'blocked_by_region',
      'blocked_by_age_policy',
      'blocked_by_rights_change'
    );
  end if;
end
$$;

do $$
begin
  if not exists (
    select 1 from pg_type t
    join pg_namespace n on n.oid = t.typnamespace
    where t.typname = 'review_status' and n.nspname = 'staticart'
  ) then
    create type staticart.review_status as enum (
      'pending',
      'approved',
      'rejected',
      'rework_required',
      'restricted'
    );
  end if;
end
$$;

do $$
begin
  if not exists (
    select 1 from pg_type t
    join pg_namespace n on n.oid = t.typnamespace
    where t.typname = 'file_role' and n.nspname = 'staticart'
  ) then
    create type staticart.file_role as enum (
      'master_original',
      'master_publish',
      'preview_image',
      'thumbnail',
      'sample_file',
      'reader_package',
      'viewer_image',
      'viewer_bundle',
      'supplemental_file'
    );
  end if;
end
$$;

do $$
begin
  if not exists (
    select 1 from pg_type t
    join pg_namespace n on n.oid = t.typnamespace
    where t.typname = 'projection_status' and n.nspname = 'staticart'
  ) then
    create type staticart.projection_status as enum (
      'eligible',
      'ineligible',
      'revoked'
    );
  end if;
end
$$;
