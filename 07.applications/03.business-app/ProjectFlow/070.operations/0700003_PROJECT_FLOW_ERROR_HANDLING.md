# ============================================================
# PROJECT FLOW ERROR HANDLING
# ============================================================

status: canonical
layer: operations
application: ProjectFlow
owner: Boss
prepared_by: Zero

error_categories:
- mapping_error
- validation_error
- transport_error
- authentication_error
- authorization_error
- conflict_error
- stale_data_error

rules:
- retryability must be explicit
- operator message and system detail should be separable
