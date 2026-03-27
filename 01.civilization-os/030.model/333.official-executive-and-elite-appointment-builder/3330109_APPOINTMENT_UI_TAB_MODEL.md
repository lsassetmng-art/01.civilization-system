# ============================================================
# APPOINTMENT UI TAB MODEL
# ============================================================

status: canonical
layer: model
scope: official-executive-and-elite-appointment-builder
component: appointment-ui-tab

owner: Boss
prepared_by: Zero


# ============================================================
# 1. RECOMMENDED TABS
# ============================================================

ui_tabs:
- Office Overview
- Office Category
- Formal Appointment
- Eligibility and Filters
- Promotion Pipeline
- Confirmation
- Removal and Discipline
- Succession
- Hidden Influence
- Practical Survival
- Validation and Locks


# ============================================================
# 2. UI BEHAVIOR
# ============================================================

ui_behavior_rules:
- Office Category is locked in normal operation after creation
- Formal Appointment base is locked in normal operation after creation
- Hidden Influence remains editable in governance mode
- Practical Survival remains editable in governance mode
- Validation and Locks must expose structure-vs-scope distinction clearly
- Regime Change mode may temporarily unlock structural appointment rules


# ============================================================
# 3. FINAL RULE
# ============================================================

The UI must teach the user
who is formally appointed,
who is actually selectable,
and who is difficult to remove.
