# ============================================================
# NAMECARD SYNC API CONTRACT
# ============================================================

status: draft
layer: integration
system: applications
application: NameCardManager
integration_scope: sync_api_contract
owner: Boss
prepared_by: Zero

purpose:
Defines sync-specific API expectations.

# ============================================================
# 1. SYNC PUSH
# ============================================================

sync_push submits local pending operations toward BusinessOS.

Expected request content may include:
- local_device_id
- pending_operation_id
- namecard_id
- operation_type
- operation_payload
- local_known_version

Expected response content may include:
- applied
- conflict_detected
- resulting_sync_state
- canonical_version
- canonical_updated_at

# ============================================================
# 2. SYNC PULL
# ============================================================

sync_pull retrieves canonical state from BusinessOS.

Expected request content may include:
- requester identity
- local_last_sync_at
- local_known_version_map

Expected response content may include:
- changed_records
- deleted_records
- relationship_updates
- publication_state_updates
- share_state_updates

# ============================================================
# 3. CONFLICT RULE
# ============================================================

If conflict is detected:
- response must explicitly indicate conflict
- local client must not assume successful apply
- canonical overwrite must not be implicit

