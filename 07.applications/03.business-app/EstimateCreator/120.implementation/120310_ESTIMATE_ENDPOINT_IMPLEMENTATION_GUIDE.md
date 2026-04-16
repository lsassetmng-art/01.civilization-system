# ============================================================
# ESTIMATE ENDPOINT IMPLEMENTATION GUIDE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This guide defines implementation rules
for endpoint structure and screen-action mapping.

# ============================================================
# 2. ENDPOINT RULE
# ============================================================

Each endpoint should own one coherent responsibility domain.

Avoid endpoints that mix:

- entry/session resolution
- estimate create/edit
- share
- publication
- inventory
- premium
- sync replay

# ============================================================
# 3. SCREEN ACTION RULE
# ============================================================

Each major screen action should map to one explicit endpoint set.

The screen should not have to guess among multiple hidden endpoint shapes.

# ============================================================
# 4. CREATE VS UPDATE RULE
# ============================================================

Use explicit create/update distinction.

Examples:
- POST /estimates for create
- PATCH /estimates/{estimate_id}/header for header update
- PUT /estimates/{estimate_id}/lines for full line replacement

# ============================================================
# 5. SESSION RULE
# ============================================================

Deeplink entry and shared session resolution
must stay explicit and separable.

Do not hide session reuse logic inside generic estimate endpoints.

# ============================================================
# 6. SYNC RULE
# ============================================================

Offline/sync support endpoints should remain clearly separated
from core business mutation endpoints.

