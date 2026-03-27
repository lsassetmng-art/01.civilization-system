# ============================================================
# PILGRIMAGE SITE AND SACRED SPACE MODEL
# ============================================================

status: canonical
layer: model
scope: religion-work-ui
component: pilgrimage-site-and-sacred-space

owner: Boss
prepared_by: Zero


# ============================================================
# 1. SACRED SITE FIELDS
# ============================================================

sacred_site_fields:
- site_id
- site_class
- site_capacity
- access_difficulty
- symbolic_rank
- upkeep_need
- seasonal_peak_level
- local_economic_dependency
- doctrine_sensitivity
- security_risk


# ============================================================
# 2. PILGRIMAGE ACTIONS
# ============================================================

pilgrimage_actions:
- open_pilgrimage_window
- expand_pilgrim_support
- restrict_site_access
- increase_site_security
- increase_memorial_capacity
- increase_festival_capacity
- attach_charity_distribution
- close_site_for_restoration


# ============================================================
# 3. FINAL RULE
# ============================================================

Sacred sites must be modeled
as spiritual, logistical,
economic, and political spaces at once.
