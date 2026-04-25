-- ============================================================
-- STATICART PHASE 1 : POLICY AND COMMERCE
-- reviewer: Sato
-- ============================================================

create table if not exists staticart.asset_rights_policy (
  asset_id uuid primary key references staticart.asset_master(asset_id) on delete cascade,
  version_no integer not null,
  exhibition_allowed boolean not null,
  commercial_use_allowed boolean not null,
  derivative_allowed boolean not null,
  additional_license_required boolean not null default false,
  age_rating text not null,
  region_mode text not null check (region_mode in ('global', 'allow_list', 'deny_list')),
  region_codes text[] not null default '{}',
  rights_summary text null,
  rights_state text not null,
  effective_from timestamptz not null,
  effective_to timestamptz null,
  updated_at timestamptz not null default now(),
  constraint asset_rights_policy_asset_version_fk
    foreign key (asset_id, version_no)
    references staticart.asset_version(asset_id, version_no)
    on delete cascade,
  constraint asset_rights_policy_region_mode_ck
    check (
      (region_mode = 'global' and coalesce(array_length(region_codes, 1), 0) = 0)
      or (region_mode in ('allow_list', 'deny_list'))
    )
);

create table if not exists staticart.asset_sales_offer (
  asset_id uuid primary key references staticart.asset_master(asset_id) on delete cascade,
  sale_type text not null,
  sales_state staticart.sales_state not null,
  base_currency text null,
  base_price numeric(12,2) null,
  price_label_override text null,
  sale_start_at timestamptz null,
  sale_end_at timestamptz null,
  limited_sale_flag boolean not null default false,
  inventory_cap integer null check (inventory_cap is null or inventory_cap >= 0),
  updated_at timestamptz not null default now(),
  constraint asset_sales_offer_price_required_ck
    check (
      sales_state not in ('for_sale', 'preorder')
      or (base_currency is not null and base_price is not null)
    )
);

create table if not exists staticart.asset_subscription_rule (
  asset_id uuid primary key references staticart.asset_master(asset_id) on delete cascade,
  subscription_state staticart.subscription_state not null,
  subscription_eligible boolean not null,
  creator_opt_in boolean not null,
  settlement_group_code text null,
  subscription_start_at timestamptz null,
  subscription_end_at timestamptz null,
  updated_at timestamptz not null default now(),
  constraint asset_subscription_rule_state_ck
    check (
      subscription_state = 'not_included'
      or subscription_eligible = true
    )
);
