# ============================================================
# FISHERY UI TAB MODEL
# ============================================================

status: canonical
layer: model
scope: fishery-work-ui
component: fishery-ui-tab

owner: Boss
prepared_by: Zero


# ============================================================
# 1. RECOMMENDED TABS
# ============================================================

ui_tabs:
- Harbor Overview
- Departure Planning
- Fishing Grounds
- Vessels and Crew
- Catch and Quota
- Preservation and Processing
- Market and Shipment
- Weather and Incidents
- AI Assist
- Results
- History


# ============================================================
# 2. UI BEHAVIOR
# ============================================================

ui_behavior_rules:
- Harbor Overview must summarize readiness, weather risk, catch value, and alerts together
- Departure Planning must show yield-versus-risk clearly
- Fishing Grounds must expose distance, weather, and sustainability together
- Vessels and Crew must show seaworthiness and fatigue explicitly
- Catch and Quota must separate raw catch from usable value
- Preservation and Processing must show spoilage risk visibly
- Market and Shipment must expose freshness-versus-price tradeoff
- Weather and Incidents must support fast safety response without hiding downstream loss
- Results must expose income, food supply, vessel wear, and grief consequences together


# ============================================================
# 3. FINAL RULE
# ============================================================

Fishery UI must teach the player
that fishery success depends on
sea judgment, preservation discipline,
and timing between harbor and market.
