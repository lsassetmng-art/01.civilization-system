# ============================================================
# MEDICAL UI TAB MODEL
# ============================================================

status: canonical
layer: model
scope: medical-work-ui
component: medical-ui-tab

owner: Boss
prepared_by: Zero


# ============================================================
# 1. RECOMMENDED TABS
# ============================================================

ui_tabs:
- Facility Overview
- Outpatient Flow
- Inpatient and Beds
- Emergency and Triage
- Staff and Departments
- Medicine and Equipment
- Recovery and Discharge
- Crises and Overcapacity
- AI Assist
- Results
- History


# ============================================================
# 2. UI BEHAVIOR
# ============================================================

ui_behavior_rules:
- Facility Overview must summarize intake, bed pressure, staff burden, and alerts together
- Outpatient Flow must distinguish routine load from urgent diversion pressure
- Inpatient and Beds must show bed mix, not only occupancy
- Emergency and Triage must show who is being delayed, diverted, or prioritized
- Staff and Departments must expose burnout and reassignment tradeoffs clearly
- Medicine and Equipment must show critical thresholds and substitution risk
- Recovery and Discharge must expose continuity-of-care consequences
- Crises and Overcapacity must support fast survival response without hiding downstream harm
- Results must expose survival, burden, trust, and continuity consequences together


# ============================================================
# 3. FINAL RULE
# ============================================================

Medical UI must teach the player
that care success depends on
capacity, triage, continuity,
and human burden together.
