# ============================================================
# MILITARY SUPPORT UI TAB MODEL
# ============================================================

status: canonical
layer: model
scope: military-support-work-ui
component: military-support-ui-tab

owner: Boss
prepared_by: Zero


# ============================================================
# 1. RECOMMENDED TABS
# ============================================================

ui_tabs:
- Command Overview
- Supply Stocks
- Personnel Support
- Deployment Support
- Training Support
- Transport and Convoys
- Casualty and Recovery
- Emergency Priority
- AI Assist
- Results
- History


# ============================================================
# 2. UI BEHAVIOR
# ============================================================

ui_behavior_rules:
- Command Overview must summarize readiness, stock pressure, recovery burden, and alerts together
- Supply Stocks must always distinguish active stock, reserve stock, and critical thresholds
- Personnel Support must show fatigue and reassignment burden clearly
- Deployment Support must show readiness tradeoffs explicitly
- Training Support must show immediate readiness versus long-term capability tradeoff
- Transport and Convoys must show risk, delay, and priority together
- Casualty and Recovery must show family support and reintegration consequences explicitly
- Emergency Priority must show what normal support is being displaced
- Results must expose readiness, morale, cost, and continuity consequences together


# ============================================================
# 3. FINAL RULE
# ============================================================

Military support UI must teach the player
that logistics, recovery, and disciplined allocation
are what keep force usable over time.
