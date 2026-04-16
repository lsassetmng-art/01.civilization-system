# ============================================================
# PORTAL SCHEMA EXACT COLUMN DEFINITION
# ============================================================

status: draft-additive
layer: implementation-ready
schema: portal
system: civilization-portal-site
owner: Boss
prepared_by: Zero

# ============================================================
# 1. copy_text
# ============================================================

table_name:
- portal.copy_text

columns:
- copy_text_id uuid not null
- copy_key text not null
- locale_code text not null
- page_code text null
- section_code text null
- text_value text not null
- status text not null
- effective_from timestamptz null
- effective_to timestamptz null
- created_at timestamptz not null
- updated_at timestamptz not null

unique_candidates:
- (copy_key, locale_code, effective_from)

# ============================================================
# 2. nav_node
# ============================================================

table_name:
- portal.nav_node

columns:
- nav_node_id uuid not null
- node_code text not null
- parent_nav_node_id uuid null
- node_type text not null
- display_name text not null
- description text null
- icon_asset_id uuid null
- sort_order integer not null default 0
- visibility_status text not null
- publish_status text not null
- status text not null
- created_at timestamptz not null
- updated_at timestamptz not null

unique_candidates:
- node_code

# ============================================================
# 3. nav_node_target
# ============================================================

table_name:
- portal.nav_node_target

columns:
- nav_node_target_id uuid not null
- nav_node_id uuid not null
- target_kind text not null
- target_code text null
- internal_route text null
- external_url text null
- helpdesk_code text null
- open_mode text not null
- status text not null
- created_at timestamptz not null
- updated_at timestamptz not null

# ============================================================
# 4. helpdesk_entry
# ============================================================

table_name:
- portal.helpdesk_entry

columns:
- helpdesk_entry_id uuid not null
- helpdesk_code text not null
- display_name text not null
- short_description text null
- route_or_target text not null
- support_scope text not null
- visibility_status text not null
- publish_status text not null
- sort_order integer not null default 0
- status text not null
- created_at timestamptz not null
- updated_at timestamptz not null

unique_candidates:
- helpdesk_code

# ============================================================
# 5. page_section
# ============================================================

table_name:
- portal.page_section

columns:
- page_section_id uuid not null
- page_code text not null
- section_code text not null
- section_type text not null
- title_copy_key text null
- description_copy_key text null
- sort_order integer not null default 0
- visibility_status text not null
- status text not null
- created_at timestamptz not null
- updated_at timestamptz not null

unique_candidates:
- (page_code, section_code)

# ============================================================
# 6. page_section_item
# ============================================================

table_name:
- portal.page_section_item

columns:
- page_section_item_id uuid not null
- page_section_id uuid not null
- item_type text not null
- ref_nav_node_id uuid null
- ref_helpdesk_entry_id uuid null
- ref_copy_key text null
- sort_order integer not null default 0
- visibility_status text not null
- status text not null
- created_at timestamptz not null
- updated_at timestamptz not null
