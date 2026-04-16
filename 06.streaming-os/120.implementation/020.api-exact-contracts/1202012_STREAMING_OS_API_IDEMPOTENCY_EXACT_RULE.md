# ============================================================
# STREAMING OS API IDEMPOTENCY EXACT RULE
# ============================================================

status: canonical-draft
system: streaming-os
domain: api-exact-contracts
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document defines idempotency behavior
for write APIs in StreamingOS.

# ============================================================
# 2. IDEMPOTENCY REQUEST SHAPE
# ============================================================

recommended_request_field:
- idempotency_key
  optional but strongly recommended for mutation endpoints

# ============================================================
# 3. REQUIRED ENDPOINT TYPES
# ============================================================

idempotency should be supported for:
- publish request submit
- report submit
- appeal submit
- notification-producing write actions
- monetization-affecting write actions
- affiliation / oversight mutation actions

# ============================================================
# 4. IDEMPOTENT BEHAVIOR RULE
# ============================================================

rules:
- same actor + same endpoint + same idempotency_key + same semantic body
  should return the same successful semantic result
- same actor + same endpoint + same idempotency_key + conflicting body
  should fail with state_conflict
- idempotency scope must be endpoint-aware
- idempotency replay should not produce duplicate side effects

# ============================================================
# 5. RESPONSE EXPECTATION
# ============================================================

recommended_response_fields on replay-safe success:
- success
  true
- idempotency_replayed
  true or false
- canonical_result_reference
  nullable

# ============================================================
# 6. CANONICAL FIXED STATEMENT
# ============================================================

StreamingOS write APIs
shall support replay-safe mutation behavior
for side-effecting endpoints
through explicit idempotency semantics.

