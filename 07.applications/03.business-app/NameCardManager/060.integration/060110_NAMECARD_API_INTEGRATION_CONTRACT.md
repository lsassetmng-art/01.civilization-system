# ============================================================
# NAMECARD API INTEGRATION CONTRACT
# ============================================================

status: draft
layer: integration
system: applications
application: NameCardManager
integration_scope: api_contract
owner: Boss
prepared_by: Zero

purpose:
Defines the API contract boundary between local runtime,
BusinessOS, and ERP publication path.

# ============================================================
# 1. CONTRACT GOAL
# ============================================================

The API contract exists to make local actions, synchronization,
sharing, and ERP-wide publication explicit and bounded.

# ============================================================
# 2. MAIN API ACTIONS
# ============================================================

BusinessOS-oriented actions:
- create_namecard
- update_namecard
- delete_namecard
- sync_pull
- sync_push
- get_namecard_detail
- get_namecard_relationships
- app_share_namecard
- revoke_app_share_namecard

ERP publication-oriented action:
- request_erp_publish_namecard

# ============================================================
# 3. REQUEST RULES
# ============================================================

Each request should include:
- requester identity or session context
- target record identity where applicable
- operation payload appropriate to action
- version or sync context where required
- company context where ERP publication requires it

# ============================================================
# 4. RESPONSE RULES
# ============================================================

Each response should include:
- operation success/failure
- canonical state or resulting state where appropriate
- sync result where relevant
- conflict or validation signal where relevant
- publication result where relevant

# ============================================================
# 5. FAILURE RULES
# ============================================================

Failure must be explicit.

Examples:
- validation_failed
- unauthorized
- conflict_detected
- share_target_invalid
- erp_setting_missing
- approval_required
- publication_failed

