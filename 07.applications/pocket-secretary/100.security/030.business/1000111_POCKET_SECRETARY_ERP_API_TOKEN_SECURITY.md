# ============================================================
# POCKET SECRETARY ERP API TOKEN SECURITY
# ============================================================

status: canonical
layer: 100.security
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines PocketSecretary-specific security application
of the shared auth-context common security.

common reference:
BusinessOS submission common security defines:
- secure auth material handling
- invalid/expired auth blocks submission
- auth possession is not acceptance

rules:
- ERP API token must be stored and handled securely
- token validity must be checked before submission
- token use must remain bounded to explicit submission paths
