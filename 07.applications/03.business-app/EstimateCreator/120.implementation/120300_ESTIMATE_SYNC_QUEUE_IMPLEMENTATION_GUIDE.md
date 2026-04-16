# ============================================================
# ESTIMATE SYNC QUEUE IMPLEMENTATION GUIDE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This guide defines implementation rules
for pending operation queue and replay.

# ============================================================
# 2. QUEUE ORDER RULE
# ============================================================

Queue execution should preserve deterministic behavior.

Recommended ordering:
- estimate core mutations first
- memo updates next
- share/publication requests after object persistence
- refresh-only operations after write-critical operations

# ============================================================
# 3. RETRY RULE
# ============================================================

Replay should record:
- attempt_count
- last_attempt_at
- last_error_code
- final queue_state

Implementation must not silently discard failed operations.

# ============================================================
# 4. CONFLICT RULE
# ============================================================

When replay detects conflict,
it must move into explicit conflict handling.

Do not auto-overwrite meaningful remote updates
without permitted resolution rule.

# ============================================================
# 5. UI RULE
# ============================================================

Queue and replay implementation must expose enough state
for UI to show:

- pending sync
- failed replay
- blocked replay
- conflict detected

