# ============================================================
# WORLD MAP PLAY ENTRY MODEL
# ============================================================

status: canonical
layer: model
scope: grand-play-ui-integration
component: world-map-play-entry

owner: Boss
prepared_by: Zero


# ============================================================
# 1. ENTRY THEMES
# ============================================================

entry_themes:
- nation_selection
- geopolitical_tension_view
- global_market_view
- alliance_and_conflict_view
- major_news_overlay
- strategic_event_alerts


# ============================================================
# 2. RULES
# ============================================================

rules:
- world map may expose high-level political and military tension
- world map may expose major market and news summaries
- world map should not overload local city-management detail
- world map is the natural entry for civilization-scale play awareness


# ============================================================
# 3. FINAL RULE
# ============================================================

World map entry
must prioritize civilization-scale awareness
before local action.
