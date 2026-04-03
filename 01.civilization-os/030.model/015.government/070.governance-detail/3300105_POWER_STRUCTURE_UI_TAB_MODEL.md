# ============================================================
# POWER STRUCTURE UI TAB MODEL
# ============================================================

status: canonical
layer: model
scope: nation-builder-power-structure-extension
component: power-structure-ui-tab

owner: Boss
prepared_by: Zero


# ============================================================
# 1. RECOMMENDED TABS
# ============================================================

ui_tabs:
- Power Structure Overview
- Constitutional Structure
- Legislature
- Executive
- Judiciary
- Local Governance
- Elite Influence
- Emergency Rule
- Appointment and Succession
- Scope Operation
- Transition Events
- Validation and Locks


# ============================================================
# 2. TAB BEHAVIOR
# ============================================================

tab_behavior_rules:
- Constitutional Structure is read-only after creation in normal mode
- Scope Operation remains editable in normal mode
- Transition Events remains hidden unless event conditions allow it
- Validation and Locks must always expose lock reasons
- Elite Influence may be partially editable if defined in scope layer


# ============================================================
# 3. FINAL RULE
# ============================================================

The UI must teach the user
which powers are foundational,
which are operational,
and which require regime transition.
