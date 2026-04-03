# ============================================================
# TBD RESOLUTION POLICY MODEL
# ============================================================

status: canonical
layer: model
scope: placeholder-resolution
component: tbd-resolution-policy

owner: Boss
prepared_by: Zero


# ============================================================
# 1. RESOLUTION TYPES
# ============================================================

resolution_types:
- replace_with_explicit_value
- replace_with_pending_asset_ref
- replace_with_draft_state
- move_to_nation_asset_pending_registry


# ============================================================
# 2. PROHIBITED
# ============================================================

prohibited:
- leaving TBD in actor legality models
- leaving TBD in office eligibility models
- leaving draft_pending_definition in route legality models
- leaving unresolved structural placeholders in canonical enum models


# ============================================================
# 3. FINAL RULE
# ============================================================

TBD is allowed only
for non-legality asset metadata
or explicitly draft-isolated data.
