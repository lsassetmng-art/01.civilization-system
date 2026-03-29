# ============================================================
# MARKETPLACE SEARCH AND DISCOVERY MODEL
# ============================================================

status: canonical
layer: model
scope: marketplace-navigation-and-entry-ui
component: marketplace-search-and-discovery

owner: Boss
prepared_by: Zero


# ============================================================
# 1. SEARCH SURFACES
# ============================================================

search_surfaces:
- global_search
- nation_scoped_search
- seller_scoped_search


# ============================================================
# 2. DISCOVERY BLOCKS
# ============================================================

discovery_blocks:
- featured
- trending
- newly_released
- nation_recommended
- seller_recommended
- because_you_own
- because_of_life_event
- because_of_work_context
- festival_or_seasonal


# ============================================================
# 3. FILTERS
# ============================================================

filters:
- category
- seller_type
- nation_availability
- religion_availability
- price_range
- badge_only
- owned_or_not_owned
- bundle_only
- event_usable_only


# ============================================================
# 4. FINAL RULE
# ============================================================

Search and discovery must remain
scope-aware and restriction-aware.
