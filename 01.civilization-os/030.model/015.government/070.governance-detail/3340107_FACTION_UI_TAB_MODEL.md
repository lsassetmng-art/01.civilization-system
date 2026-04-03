# ============================================================
# FACTION UI TAB MODEL
# ============================================================

status: canonical
layer: model
scope: faction-interest-group-and-lobby-builder
component: faction-ui-tab

owner: Boss
prepared_by: Zero


# ============================================================
# 1. RECOMMENDED TABS
# ============================================================

ui_tabs:
- Faction Overview
- Faction Types
- Interest Groups
- Influence Channels
- Patronage Networks
- Corruption and Capture
- Coalitions
- Conflicts
- Country Signature Groups
- Practical Influence
- Validation and Locks


# ============================================================
# 2. UI BEHAVIOR
# ============================================================

ui_behavior_rules:
- Faction Types are locked in normal operation after creation
- Influence Channels remain editable in governance mode
- Corruption and Capture intensity remains editable in governance mode
- Country Signature Groups remain partially editable if defined as scope-weighted
- Validation and Locks must clearly expose visible vs hidden power distinction
- Regime Change mode may unlock structural faction redesign


# ============================================================
# 3. FINAL RULE
# ============================================================

The UI must teach the user
which groups are formal,
which are tolerated,
which are hidden,
and which actually govern outcomes.
