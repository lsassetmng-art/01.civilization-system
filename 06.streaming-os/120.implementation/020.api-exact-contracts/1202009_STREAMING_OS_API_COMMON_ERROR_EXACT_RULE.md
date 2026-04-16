# ============================================================
# STREAMING OS API COMMON ERROR EXACT RULE
# ============================================================

status: canonical-draft
system: streaming-os
domain: api-exact-contracts
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This document defines the common error payload rule
for StreamingOS exact APIs.

# ============================================================
# 2. COMMON ERROR RESPONSE SHAPE
# ============================================================

error_response_payload:
- success
  always false
- error_code
- error_title
- error_detail
  nullable
- field_errors
  nullable:
  - field_name
  - error_code
  - error_detail
- request_id
  nullable
- occurred_at

# ============================================================
# 3. COMMON ERROR CODES
# ============================================================

recommended_error_codes:
- invalid_request
- invalid_field
- missing_required_field
- unsupported_value
- unauthorized_actor
- forbidden_action
- target_not_found
- state_conflict
- review_required
- governance_blocked
- retry_later
- rate_limited
- internal_error

# ============================================================
# 4. FIELD ERROR RULE
# ============================================================

field_errors should be present when:
- a specific input field failed validation
- multiple fields failed validation
- the caller can correct the request directly

field_errors should be omitted when:
- the error is global
- the target is missing
- the action is forbidden for non-field reasons

# ============================================================
# 5. CANONICAL FIXED STATEMENT
# ============================================================

All StreamingOS exact APIs
shall return a common error payload shape
with explicit error_code,
error_title,
optional error_detail,
optional field_errors,
and optional request correlation reference.

