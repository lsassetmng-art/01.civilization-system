-- ============================================================
-- PORTAL APPLY READY V1
-- portal only
-- reviewed bundle / not auto-applied
-- ============================================================

create schema if not exists portal;

create extension if not exists pgcrypto;

create table if not exists portal.copy_text (
  copy_text_id uuid primary key default gen_random_uuid(),
  copy_key text not null,
  locale_code text not null,
  page_code text null,
  section_code text null,
  text_value text not null,
  status text not null,
  effective_from timestamptz null,
  effective_to timestamptz null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  unique (copy_key, locale_code, effective_from)
);

create table if not exists portal.nav_node (
  nav_node_id uuid primary key default gen_random_uuid(),
  node_code text not null unique,
  parent_nav_node_id uuid null references portal.nav_node(nav_node_id),
  node_type text not null,
  display_name text not null,
  description text null,
  icon_asset_id uuid null,
  sort_order integer not null default 0,
  visibility_status text not null,
  publish_status text not null,
  status text not null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists portal.nav_node_target (
  nav_node_target_id uuid primary key default gen_random_uuid(),
  nav_node_id uuid not null references portal.nav_node(nav_node_id),
  target_kind text not null,
  target_code text null,
  internal_route text null,
  external_url text null,
  helpdesk_code text null,
  open_mode text not null,
  status text not null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists portal.helpdesk_entry (
  helpdesk_entry_id uuid primary key default gen_random_uuid(),
  helpdesk_code text not null unique,
  display_name text not null,
  short_description text null,
  route_or_target text not null,
  support_scope text not null,
  visibility_status text not null,
  publish_status text not null,
  sort_order integer not null default 0,
  status text not null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists portal.page_section (
  page_section_id uuid primary key default gen_random_uuid(),
  page_code text not null,
  section_code text not null,
  section_type text not null,
  title_copy_key text null,
  description_copy_key text null,
  sort_order integer not null default 0,
  visibility_status text not null,
  status text not null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  unique (page_code, section_code)
);

create table if not exists portal.page_section_item (
  page_section_item_id uuid primary key default gen_random_uuid(),
  page_section_id uuid not null references portal.page_section(page_section_id),
  item_type text not null,
  ref_nav_node_id uuid null references portal.nav_node(nav_node_id),
  ref_helpdesk_entry_id uuid null references portal.helpdesk_entry(helpdesk_entry_id),
  ref_copy_key text null,
  sort_order integer not null default 0,
  visibility_status text not null,
  status text not null,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create index if not exists idx_portal_copy_text_copy_key
  on portal.copy_text(copy_key);

create index if not exists idx_portal_copy_text_page_code
  on portal.copy_text(page_code);

create index if not exists idx_portal_copy_text_section_code
  on portal.copy_text(section_code);

create index if not exists idx_portal_nav_node_parent_nav_node_id
  on portal.nav_node(parent_nav_node_id);

create index if not exists idx_portal_nav_node_node_type
  on portal.nav_node(node_type);

create index if not exists idx_portal_nav_node_sort_order
  on portal.nav_node(sort_order);

create index if not exists idx_portal_nav_node_target_nav_node_id
  on portal.nav_node_target(nav_node_id);

create index if not exists idx_portal_helpdesk_entry_sort_order
  on portal.helpdesk_entry(sort_order);

create index if not exists idx_portal_page_section_page_code
  on portal.page_section(page_code);

create index if not exists idx_portal_page_section_sort_order
  on portal.page_section(sort_order);

create index if not exists idx_portal_page_section_item_page_section_id
  on portal.page_section_item(page_section_id);

create index if not exists idx_portal_page_section_item_ref_nav_node_id
  on portal.page_section_item(ref_nav_node_id);

create index if not exists idx_portal_page_section_item_ref_helpdesk_entry_id
  on portal.page_section_item(ref_helpdesk_entry_id);
