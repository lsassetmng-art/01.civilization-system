# ============================================================
# ESTIMATE DELIVERY STATE IMPLEMENTATION GUIDE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This guide defines implementation rules
for delivery state handling and resend-safe behavior.

# ============================================================
# 2. STATE RULE
# ============================================================

Implementation must keep delivery state separate from:

- publication state
- customer response state
- readonly link state
- premium entitlement state

# ============================================================
# 3. RESEND RULE
# ============================================================

Resend must create a new traceable delivery meaning.

Do not overwrite:
- prior delivery_record_id
- prior presented_at
- prior delivery artifact meaning
- prior open history

# ============================================================
# 4. OPEN RULE
# ============================================================

Open events are append-only in meaning.

Implementation should preserve both:
- aggregate summary
- detailed open log history

# ============================================================
# 5. RESPONSE BASIS RULE
# ============================================================

Customer response must bind to:
- revision_snapshot_id
- delivery_record_id
and optionally
- delivery_artifact_id

Do not infer response basis from latest estimate state.

# ============================================================
# 6. READONLY LINK RULE
# ============================================================

Readonly link state transitions such as:
- expired
- revoked

must remain explicit and queryable.

