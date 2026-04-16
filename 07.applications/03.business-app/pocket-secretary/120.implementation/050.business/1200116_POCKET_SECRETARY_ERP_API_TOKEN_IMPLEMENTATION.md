# ============================================================
# POCKET SECRETARY ERP API TOKEN IMPLEMENTATION
# ============================================================

status: canonical
layer: 120.implementation
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines PocketSecretary-specific auth-context implementation
based on the shared Business Submission Common.

common reference:
BusinessOS submission common defines shared auth-context handling.

PocketSecretary-specific implementation directions:
- store ERP API token securely
- validate token presence and expiry before submission
- bind token to required company/user context where applicable
- block submission when token state is invalid

rules:
- token handling must remain bounded to explicit submission paths
- token validity must not be confused with business acceptance
