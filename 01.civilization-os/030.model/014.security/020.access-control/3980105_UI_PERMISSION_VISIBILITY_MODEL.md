# ============================================================
# UI PERMISSION VISIBILITY MODEL
# ============================================================

status: canonical
layer: model
scope: field-permission-control
component: ui-permission-visibility

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
- hidden may be used for non-discoverable or sensitive targets
- visible_disabled may be used when the user should understand the action exists but is blocked
- visible_overview_only may be used when inspection is allowed but editing is not
- visible_usable may be used when service use is allowed
- visible_manageable may be used when explicit management is allowed
- visible_approval_required may be used when the action is conditionally allowed after approval


# ============================================================
# 3. FINAL RULE
# ============================================================

UI must reflect permission truth
without misleading users
about what they can actually do.
