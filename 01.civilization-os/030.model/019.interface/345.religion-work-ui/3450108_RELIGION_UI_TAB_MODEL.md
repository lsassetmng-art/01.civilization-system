# ============================================================
# RELIGION UI TAB MODEL
# ============================================================

status: canonical
layer: model
scope: religion-work-ui
component: religion-ui-tab

owner: Boss
prepared_by: Zero


# ============================================================
# 1. RECOMMENDED TABS
# ============================================================

ui_tabs:
- Institution Overview
- Ritual Schedule
- Clergy and Staff
- Donations and Resources
- Believers and Community
- Pilgrimage and Sacred Sites
- Outreach and Doctrine
- Crises and Scandals
- AI Assist
- Results
- History


# ============================================================
# 2. UI BEHAVIOR
# ============================================================

ui_behavior_rules:
- Institution Overview must summarize attendance, donation, clergy load, and alerts together
- Ritual Schedule must show ordinary rituals and seasonal peaks separately
- Donations and Resources must distinguish devotion income, patron income, and charity outflow
- Believers and Community must show need, loyalty, and strain together
- Pilgrimage and Sacred Sites must show symbolic rank and logistics together
- Outreach and Doctrine must expose influence gain versus capture risk
- Crises and Scandals must allow fast response without hiding legitimacy damage
- Results must expose spiritual, social, economic, and political consequences together


# ============================================================
# 3. FINAL RULE
# ============================================================

Religion UI must teach the player
that belief institutions are sustained by
ritual labor, trust, resources,
and legitimacy under pressure.
