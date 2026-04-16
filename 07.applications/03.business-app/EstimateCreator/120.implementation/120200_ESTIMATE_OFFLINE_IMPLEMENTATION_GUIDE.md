# ============================================================
# ESTIMATE OFFLINE IMPLEMENTATION GUIDE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

Offline implementation must support safe field usage
without falsely claiming external completion.

# ============================================================
# 2. REQUIRED LOCAL OBJECTS
# ============================================================

Local persistence should cover at minimum:

- estimate_record
- estimate_line_item
- opportunity_memo
- meeting_memo
- estimate_sync_state
- estimate_pending_operation
- estimate_launch_context
- cached premium entitlement
- cached inventory reference where needed

# ============================================================
# 3. REQUIRED OFFLINE CAPABILITIES
# ============================================================

Offline implementation should provide:

- local draft create/edit
- local pending queue
- restart-safe persistence
- replay-safe operation structure
- explicit offline banner/state
- conflict-aware replay handling

# ============================================================
# 4. OFFLINE PROHIBITIONS
# ============================================================

Offline implementation must not mark as completed:

- ERP publication
- authoritative approval completion
- authoritative inventory confirmation
- premium verification refresh

# ============================================================
# 5. REPLAY RULE
# ============================================================

Replay should process queued operations deterministically
and preserve explicit result state for each replayed operation.

