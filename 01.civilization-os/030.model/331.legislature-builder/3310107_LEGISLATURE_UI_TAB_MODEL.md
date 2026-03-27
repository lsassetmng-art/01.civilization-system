# ============================================================
# LEGISLATURE UI TAB MODEL
# ============================================================

status: canonical
layer: model
scope: legislature-builder
component: legislature-ui-tab

owner: Boss
prepared_by: Zero


# ============================================================
# 1. RECOMMENDED TABS
# ============================================================

ui_tabs:
- Legislature Overview
- Chamber Structure
- Seat Composition
- Member Entry
- Legislative Powers
- Budget and Tax Powers
- Oversight and Impeachment
- Committees
- Terms and Dissolution
- Practical Influence
- Validation and Locks


# ============================================================
# 2. UI BEHAVIOR
# ============================================================

ui_behavior_rules:
- Chamber Structure is locked in normal operation after creation
- Seat Composition is locked in normal operation after creation
- Practical Influence remains editable in scope mode
- Validation and Locks must explain why elected structures are frozen
- Regime Change mode may temporarily unlock structure tabs


# ============================================================
# 3. FINAL RULE
# ============================================================

The UI must make clear
which parts of a legislature are constitutional,
which are operational,
and which require regime transition.
