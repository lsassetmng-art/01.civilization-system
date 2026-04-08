# ============================================================
# ESTIMATE ERP PUBLISH API CONTRACT
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

ERP publish contract for EstimateCreator must represent
rough estimate publication explicitly.

Minimum payload characteristics:

- source_system = business_os
- source_app = estimate_creator
- estimate_class = rough_estimate
- company_id
- estimate_id
- revision_no
- requesting_user_id
- approval_state
- payload_profile_code

Response must distinguish:

- request_accepted
- request_rejected
- processing
- completed
- failed

