# ============================================================
# RAILWAY UI TAB MODEL
# ============================================================

status: canonical
layer: model
scope: railway-work-ui
component: railway-ui-tab

owner: Boss
prepared_by: Zero


# ============================================================
# 1. RECOMMENDED TABS
# ============================================================

ui_tabs:
- Network Overview
- Timetable
- Trainsets and Crew
- Stations
- Maintenance
- Fares and Demand
- Disruptions
- AI Assist
- Results
- History


# ============================================================
# 2. UI BEHAVIOR
# ============================================================

ui_behavior_rules:
- Network Overview must summarize punctuality, crowding, fleet, and alerts together
- Timetable must always show recovery margin and conflict warnings
- Trainsets and Crew must expose substitution capacity clearly
- Stations must show bottlenecks, not only passenger counts
- Maintenance must show deferred-risk explicitly
- Fares and Demand must show access-versus-revenue tradeoff
- Disruptions must allow fast response without hiding downstream cost
- Results must expose trust, delay, cost, and safety consequences together


# ============================================================
# 3. FINAL RULE
# ============================================================

Railway UI must teach the player
that rail success depends on
time discipline, infrastructure truth,
and disruption recovery capacity.
