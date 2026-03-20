# ============================================================
# POCKET SECRETARY ERROR HANDLING MODEL
# ============================================================

status: canonical
system: pocket-secretary
component: error-handling-model
owner: Boss
prepared_by: Zero


# PURPOSE

Defines runtime error handling policy.


# ERROR TYPES

database_error  
network_error  
persona_asset_error  
erp_request_error


# POLICY

Errors must be:

- logged
- surfaced to UI when relevant
- recoverable where possible
