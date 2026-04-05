# ============================================================
# NAMECARD API FIELD SCHEMA
# ============================================================

status: draft
layer: integration
system: applications
application: NameCardManager
integration_scope: api_field_schema
owner: Boss
prepared_by: Zero

purpose:
Defines request and response field schema at the integration boundary.

# ============================================================
# 1. CREATE NAMECARD REQUEST SCHEMA
# ============================================================

fields:
- requester_user_id: uuid, required
- local_device_id: string, optional
- full_name: string, required
- company_name: string, optional
- department_name: string, optional
- title_name: string, optional
- email: string, optional
- phone: string, optional
- address_text: string, optional
- website_url: string, optional
- memo: string, optional

# ============================================================
# 2. CREATE NAMECARD RESPONSE SCHEMA
# ============================================================

fields:
- success: boolean, required
- namecard_id: uuid, required if success=true
- canonical_version: integer, optional
- sync_state: enum, optional
- error_code: string, optional
- error_message: string, optional
- updated_at: timestamp, optional

# ============================================================
# 3. UPDATE NAMECARD REQUEST SCHEMA
# ============================================================

fields:
- requester_user_id: uuid, required
- namecard_id: uuid, required
- canonical_version: integer, optional
- full_name: string, optional
- company_name: string, optional
- department_name: string, optional
- title_name: string, optional
- email: string, optional
- phone: string, optional
- address_text: string, optional
- website_url: string, optional
- memo: string, optional
- detail_payload: object, optional

# ============================================================
# 4. DELETE NAMECARD REQUEST SCHEMA
# ============================================================

fields:
- requester_user_id: uuid, required
- namecard_id: uuid, required
- canonical_version: integer, optional
- delete_reason: string, optional

# ============================================================
# 5. SYNC PUSH REQUEST SCHEMA
# ============================================================

fields:
- requester_user_id: uuid, required
- local_device_id: string, required
- pending_operation_id: uuid, required
- namecard_id: uuid, required
- operation_type: enum, required
- operation_payload: object, required
- local_known_version: integer, optional

# ============================================================
# 6. SYNC PUSH RESPONSE SCHEMA
# ============================================================

fields:
- success: boolean, required
- applied: boolean, required
- conflict_detected: boolean, required
- resulting_sync_state: enum, optional
- canonical_version: integer, optional
- error_code: string, optional
- error_message: string, optional

# ============================================================
# 7. SYNC PULL REQUEST SCHEMA
# ============================================================

fields:
- requester_user_id: uuid, required
- local_device_id: string, required
- local_last_sync_at: timestamp, optional
- local_known_version_map: object, optional

# ============================================================
# 8. SYNC PULL RESPONSE SCHEMA
# ============================================================

fields:
- success: boolean, required
- changed_records: array, optional
- deleted_records: array, optional
- share_state_updates: array, optional
- relationship_updates: array, optional
- publication_state_updates: array, optional
- error_code: string, optional
- error_message: string, optional

# ============================================================
# 9. APP SHARE REQUEST SCHEMA
# ============================================================

fields:
- requester_user_id: uuid, required
- namecard_ids: array, required
- share_target_ids: array, required
- operation_timestamp: timestamp, optional

# ============================================================
# 10. APP SHARE REVOKE REQUEST SCHEMA
# ============================================================

fields:
- requester_user_id: uuid, required
- namecard_ids: array, required
- revoked_share_target_ids: array, required
- operation_timestamp: timestamp, optional

# ============================================================
# 11. ERP PUBLISH REQUEST SCHEMA
# ============================================================

fields:
- requester_user_id: uuid, required
- namecard_ids: array, required
- company_id: uuid, required
- publication_policy_code: string, required
- request_note: string, optional
- canonical_version_map: object, optional
- publication_context: object, optional

# ============================================================
# 12. ERP PUBLISH RESPONSE SCHEMA
# ============================================================

fields:
- success: boolean, required
- approval_required: boolean, required
- accepted_for_review: boolean, optional
- publication_submitted: boolean, optional
- publication_state: enum, optional
- publication_request_ids: array, optional
- error_code: string, optional
- error_message: string, optional

# ============================================================
# 13. RELATIONSHIP QUERY REQUEST SCHEMA
# ============================================================

fields:
- requester_user_id: uuid, required
- namecard_id: uuid, required
- visibility_scope: enum, optional

# ============================================================
# 14. RELATIONSHIP QUERY RESPONSE SCHEMA
# ============================================================

fields:
- success: boolean, required
- relationship_entries: array, optional
- error_code: string, optional
- error_message: string, optional

