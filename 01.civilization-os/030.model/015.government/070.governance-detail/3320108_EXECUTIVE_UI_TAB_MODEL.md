# ============================================================
# EXECUTIVE UI TAB MODEL
# ============================================================

status: canonical
layer: model
scope: executive-builder
component: executive-ui-tab

owner: Boss
prepared_by: Zero


# ============================================================
# 1. RECOMMENDED TABS
# ============================================================

ui_tabs:
- Executive Overview
- Head of State
- Head of Government
- Cabinet and Offices
- Ministries
- Power Scope
- Appointment and Removal
- Succession
- Emergency and Command Chain
- Practical Control
- Validation and Locks


# ============================================================
# 2. UI BEHAVIOR
# ============================================================

ui_behavior_rules:
- Head of State is locked in normal operation after creation
- Head of Government structure is locked in normal operation after creation
- Ministries base existence is locked in normal operation after creation
- Power Scope remains editable in governance mode
- Practical Control remains editable in governance mode
- Emergency and Command Chain may gain temporary overrides in event mode
- Validation and Locks must expose structure-vs-scope distinction clearly


# ============================================================
# 3. FINAL RULE
# ============================================================

The UI must teach the user
which executive elements are constitutional,
which are operational,
and which require regime transition.
