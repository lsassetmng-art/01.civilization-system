# ============================================================
# NAMECARD API FIELD SCHEMA IMPLEMENTATION GUIDE
# ============================================================

status: draft
layer: implementation
system: applications
application: NameCardManager
implementation_scope: api_field_schema
owner: Boss
prepared_by: Zero

purpose:
Provides implementation guidance for request/response field schema.

# ============================================================
# 1. IMPLEMENTATION DIRECTION
# ============================================================

Implementation should:
- treat canonical field schema as the contract source
- keep field naming stable
- distinguish required and optional fields explicitly
- validate enum and identifier fields early

# ============================================================
# 2. REQUEST VALIDATION DIRECTION
# ============================================================

Validate:
- requester_user_id existence and authority
- record identifiers
- array presence where batch operation is used
- required company_id for ERP publish
- required publication_policy_code for ERP publish
- operation_payload presence for sync push

# ============================================================
# 3. RESPONSE DIRECTION
# ============================================================

Responses should:
- always include success
- include canonical result identifiers where applicable
- include error_code on failure
- not blur approval-required with publish success
- not blur conflict with generic failure

# ============================================================
# 4. CLIENT DIRECTION
# ============================================================

Client should:
- respect required fields before request submission
- surface missing required fields clearly
- treat optional fields as absent rather than invented defaults
- preserve response error_code and state meaning in UI

