# ============================================================
# ERROR CODE MODEL
# ============================================================

status: canonical
layer: model
application: QuickForecast
model: error_code
owner: Boss
prepared_by: Zero

purpose:
Defines runtime / sync / submission error code families.

error_families:
- local_persistence_error
- sync_error
- approval_error
- submission_error
- permission_error
- contract_error
- unsupported_tier_error

principles:
- false success is prohibited
- terminal and retryable error must be distinguishable
- user-visible summary and internal detail should be separable
