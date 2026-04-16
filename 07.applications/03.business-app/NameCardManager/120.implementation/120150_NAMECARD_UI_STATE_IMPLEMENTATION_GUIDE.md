# ============================================================
# NAMECARD UI STATE IMPLEMENTATION GUIDE
# ============================================================

status: draft
layer: implementation
system: applications
application: NameCardManager
implementation_scope: ui_state
owner: Boss
prepared_by: Zero

purpose:
Provides implementation guidance for canonical UI state rendering.

# ============================================================
# 1. IMPLEMENTATION DIRECTION
# ============================================================

Implementation should:
- map backend state into canonical UI state codes
- avoid duplicating ad hoc state meanings per screen
- keep approval, publication, conflict, and protection distinct

# ============================================================
# 2. LIST SCREEN DIRECTION
# ============================================================

List screen should prefer compact state display:
- one sync badge
- one share badge
- one ERP publication badge
- one relationship indicator

# ============================================================
# 3. DETAIL SCREEN DIRECTION
# ============================================================

Detail screen may show richer state text:
- exact sync situation
- exact share status
- exact approval/publication stage
- exact relationship importance
- exact protection limitation

# ============================================================
# 4. FAILURE DIRECTION
# ============================================================

Do not collapse:
- pending approval into published
- conflict into generic failed
- protected hidden into missing data
- rejected into returned for fix

