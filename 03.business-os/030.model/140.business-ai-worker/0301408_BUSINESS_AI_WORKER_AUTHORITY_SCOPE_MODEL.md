# ============================================================
# BUSINESS AI WORKER AUTHORITY SCOPE MODEL
# ============================================================

status: canonical
layer: model
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines authority scope model.

minimum_fields:
- authority_scope_id
- worker_id
- company_id
- may_advise
- may_prepare_review
- may_prepare_approval
- may_execute_work_order
- may_publish_directly
- requires_human_approval
