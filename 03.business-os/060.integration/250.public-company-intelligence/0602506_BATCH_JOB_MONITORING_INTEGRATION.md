# ============================================================
# BATCH JOB MONITORING INTEGRATION
# ============================================================

status: canonical
system: business-os
layer: integration
domain: public-company-intelligence
owner: Boss
prepared_by: Zero
authority_source:
- /data/data/com.termux/files/home/01.civilization-system/03.business-os/920.meta/9201491_BUSINESS_PUBLIC_COMPANY_INTELLIGENCE_IMPLEMENTATION_READY_CLOSURE_PACK.md

consumer_or_peer:
- batch monitoring surfaces

integration_direction:
- ops read path into batch and freshness data

contracts:
- company_batch_job status view
- batch job log view
- freshness view

integration_rules:
- ops may rerun through governed action only
- monitoring never edits profiles directly

error_surface:
- job_not_found
- projection_unavailable
