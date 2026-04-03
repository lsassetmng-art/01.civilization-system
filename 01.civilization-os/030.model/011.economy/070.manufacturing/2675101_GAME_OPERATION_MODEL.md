# ============================================================
# GAME OPERATION MODEL
# ============================================================

status: canonical
layer: model
scope: industry-pack
component: game-operation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. CORE FLOW
# ============================================================

- game_defined
- release_prepared
- entitlement_linked
- launched
- patch_cycle_operated
- event_cycle_operated_if_connected
- lifecycle_maintained


# ============================================================
# 2. SPLIT
# ============================================================

connected_game:
- supports live updates
- supports event operation
- supports ongoing service posture

standalone_game:
- fixed release posture
- update optional
- no live service required


# ============================================================
# 3. FINAL RULE
# ============================================================

Game operation must explicitly separate connected and standalone logic.
