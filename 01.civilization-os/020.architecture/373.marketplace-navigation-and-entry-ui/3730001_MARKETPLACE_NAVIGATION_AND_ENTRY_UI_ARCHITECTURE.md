# ============================================================
# MARKETPLACE NAVIGATION AND ENTRY UI ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: marketplace-navigation-and-entry-ui
component: marketplace-navigation-and-entry-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines the canonical navigation
and entry UI architecture
for the Civilization digital marketplace.

This architecture defines:

- civilization-global marketplace entry
- nation marketplace entry
- company direct store entry
- tenant-based marketplace entry
- marketplace list navigation
- detail, purchase, and library routing
- search and context resolution


# ============================================================
# 2. CORE PRINCIPLE
# ============================================================

Marketplace navigation must separate:

- entry context
- list context
- listing detail context
- purchase context
- library context
- seller context

The same marketplace service
must preserve one canonical structure
while changing filters,
surface emphasis,
and context banners by entry route.


# ============================================================
# 3. ENTRY CONTEXTS
# ============================================================

The marketplace must support:

- Civilization Global Entry
- Nation Marketplace Entry
- Company Direct Store Entry
- Field Facility Entry
- Tenant Marketplace Entry
- Search Result Entry
- Notification Entry


# ============================================================
# 4. CANONICAL NAVIGATION CHAIN
# ============================================================

canonical_navigation_chain:
- resolve_entry_context
- open_entry_home
- open_category_or_list
- open_listing_detail
- execute_purchase_or_unlock
- write_order
- write_library_access
- expose_post_purchase_actions


# ============================================================
# 5. FINAL RULE
# ============================================================

Marketplace navigation must let users know
where they entered from,
what scope they are browsing,
and what access they will receive.
