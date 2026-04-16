# ============================================================
# NAMECARD ERP PUBLISH API CONTRACT
# ============================================================

status: draft
layer: integration
system: applications
application: NameCardManager
integration_scope: erp_publish_api_contract
owner: Boss
prepared_by: Zero

purpose:
Defines API contract for ERP-wide publication requests.

# ============================================================
# 1. REQUEST GOAL
# ============================================================

ERP-wide publish request is a controlled publication request,
not ordinary app sharing.

# ============================================================
# 2. EXPECTED REQUEST CONTENT
# ============================================================

Request may include:
- requester identity
- target namecard ids
- company_id
- publication_policy_code
- approval_context
- requester note
- canonical version reference

# ============================================================
# 3. EXPECTED RESPONSE CONTENT
# ============================================================

Response may include:
- accepted_for_review
- approval_required
- publication_submitted
- publication_state
- rejection_reason
- validation_errors

# ============================================================
# 4. RULES
# ============================================================

- approval-required response must not be treated as published
- published response must indicate resulting published state
- ordinary user revoke is not part of this contract

