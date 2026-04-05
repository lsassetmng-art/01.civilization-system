# ============================================================
# NAME CARD MANAGER FLOW
# ============================================================

status: draft
layer: flow
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Defines end-to-end operational flows for NameCardManager.

# ============================================================
# 1. LOGIN FLOW
# ============================================================

1. User opens the application.
2. User authenticates by:
   - id and password
   - fingerprint
   - face authentication
3. On success, the application opens the name card list.
4. On failure, access is denied.

# ============================================================
# 2. ONLINE BOOT FLOW
# ============================================================

1. Detect online state.
2. Pull canonical state from BusinessOS.
3. Synchronize BusinessOS state to local.
4. Replay pending offline operations to BusinessOS.
5. Refresh local state from BusinessOS after replay.

# ============================================================
# 3. OFFLINE BOOT FLOW
# ============================================================

1. Detect offline state.
2. Open local cached dataset.
3. Mark session as offline working mode.
4. Queue all mutating operations for later replay.

# ============================================================
# 4. NAME CARD CREATE FLOW
# ============================================================

1. User selects create.
2. User enters basic card information.
3. User may attach front/back image.
4. Record is saved locally.
5. If online, record is applied to BusinessOS.
6. If offline, create operation is queued.

# ============================================================
# 5. NAME CARD DETAIL UPDATE FLOW
# ============================================================

1. User opens a name card.
2. User edits detailed information:
   - tendency
   - personality
   - responsibility scope
   - work scope
   - order history
   - relationship note
3. Record is updated locally.
4. If online, update is applied to BusinessOS.
5. If offline, update operation is queued.

# ============================================================
# 6. NAME CARD DELETE FLOW
# ============================================================

1. User selects delete.
2. Confirmation is required.
3. Record is logically deleted locally.
4. If online, delete is applied to BusinessOS.
5. If offline, delete operation is queued.

# ============================================================
# 7. APP-INTERNAL SHARE FLOW
# ============================================================

1. User selects one or more target name cards.
2. User presses share button.
3. System verifies configured share targets.
4. System applies app-internal sharing to BusinessOS.
5. Share state becomes active for selected share targets.

# ============================================================
# 8. APP-INTERNAL SHARE REVOKE FLOW
# ============================================================

1. User opens share management.
2. User removes one or more share targets.
3. System updates share state in BusinessOS.
4. Removed targets lose access.

# ============================================================
# 9. ERP-WIDE SHARE FLOW
# ============================================================

1. User selects one or more target name cards.
2. User presses ERP-wide share button.
3. System checks ERP use setting.
4. System checks publication policy.
5. System checks approval requirement.
6. If requirements pass, publication request is sent.
7. ERP publication state is updated accordingly.

# ============================================================
# 10. RELATIONSHIP VIEW FLOW
# ============================================================

1. User opens a card detail.
2. System loads known related cards and related business context.
3. Related entries are shown visually in the detail view.

