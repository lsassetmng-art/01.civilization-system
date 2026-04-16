# ============================================================
# BUSINESS AI WORKER LENDING OPERATIONS
# ============================================================

status: canonical
layer: operations
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines operations for active lending.

operational_targets:
- lending creation visibility
- lending duration tracking
- stale active lending detection
- improper release detection
- company-level lending traceability

rule:
All active lending must be operationally visible by company_id and worker_id.
