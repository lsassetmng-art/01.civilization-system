# ============================================================
# POCKET SECRETARY PERMISSION SECURITY
# ============================================================

status: canonical
layer: 100.security
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines security rules for permission and execution eligibility.

permission areas:
- device permissions
- local feature permissions
- notification capability permission
- bounded external execution eligibility

rules:
- permissions must be explicit
- denied or unknown permission must not be treated as granted
- permission state must not be inferred from UI visibility
- Persona styling must not alter permission decisions
