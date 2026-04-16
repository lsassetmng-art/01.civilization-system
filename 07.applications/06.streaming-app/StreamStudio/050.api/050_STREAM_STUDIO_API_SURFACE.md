# ============================================================
# STREAM STUDIO API SURFACE
# ============================================================

status: exactness-ready
layer: api
system: applications
application: StreamStudio
owner: Boss
prepared_by: Zero

purpose:
Defines the exact API family grouping for implementation readiness.

api_groups:
- project_and_upload
- draft_asset
- review_approval
- publish
- marketplace_listing
- membership
- split_and_settlement
- error_validation_idempotency

fixed_contract_policy:
- request and response envelopes are standardized
- validation errors and business rule errors are separated
- idempotent mutation endpoints require idempotency_key
- canonical publish and external push results are separated
- commerce listing and membership errors are separated from creator draft errors
