# ============================================================
# MILITARY AND INFRASTRUCTURE PERMISSION UI MODEL
# ============================================================

status: canonical
layer: model
scope: military-and-infrastructure-ui-integration
component: military-and-infrastructure-permission-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. VISIBILITY STATES
# ============================================================

visibility_states:
- hidden
- visible_disabled
- visible_overview_only
- visible_usable
- visible_manageable
- visible_approval_required


# ============================================================
# 2. RULES
# ============================================================

rules:
- military management actions use stricter visibility than ordinary service use
- conscription and mobilization controls require elevated authority feedback
- infrastructure actions show authority-specific disabled reasons when blocked
- public or sovereign actions may appear visible_overview_only to lower actors
- UI must not imply actionability when execution is blocked


# ============================================================
# 3. FINAL RULE
# ============================================================

Permission-aware UI
must show not only what exists
but what the current actor can actually do.
