# ============================================================
# ESTIMATE EXACT PAYLOAD IMPLEMENTATION GUIDE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This guide converts the exact payload contract
into implementation-side rules.

# ============================================================
# 2. ENVELOPE RULE
# ============================================================

All integration-facing responses should use the fixed envelope:

- success
- code
- message
- data
- error

Implementation should not return ad-hoc response shapes
for the same operation family.

# ============================================================
# 3. FIELD NAMING RULE
# ============================================================

Implementation should preserve exact field names
from the exact payload contract.

Do not mix alternative names such as:

- userId vs user_id
- estimateId vs estimate_id
- syncStatus vs sync_state

Choose one canonical naming rule and keep it fixed.

Recommended:
- snake_case in design and payload contract

# ============================================================
# 4. NULLABILITY RULE
# ============================================================

Implementation should preserve nullability exactly.

Examples:
- source_screen may be null
- estimate_id may be null in some entry flows
- checked_at may be null on failed inventory response

Do not silently omit required nullable fields
when the contract defines them.

# ============================================================
# 5. EXACT STATE RULE
# ============================================================

Implementation should not compress state values.

Examples:
- publication_pending is not the same as publication_completed
- success_cached is not the same as success_fresh
- unknown entitlement is not the same as inactive entitlement

# ============================================================
# 6. PREMIUM RULE
# ============================================================

Premium-gated operations must return a contract-consistent failure.

Recommended:
- success: false
- code: PREMIUM_REQUIRED
- message: explicit premium requirement message
- error.field: exact field or action source

# ============================================================
# 7. DEEPLINK RULE
# ============================================================

Deeplink implementation must not transport raw credentials
through business payload.

Session reuse should be resolved outside the business payload itself.

# ============================================================
# 8. OFFLINE RULE
# ============================================================

Offline-created objects may initially return:

- sync_state: local_only
or
- sync_state: pending_push

depending on implementation timing,
but the semantics must remain explicit and stable.

# ============================================================
# 9. VERSIONING RULE
# ============================================================

If payload evolution becomes necessary later,
version at the operation or contract layer explicitly.

Do not silently change field meaning in-place.

