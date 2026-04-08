# ============================================================
# POCKET SECRETARY ERP API TOKEN VALIDATION DEVELOPMENT
# ============================================================

status: canonical
layer: 130.development
system: pocket-secretary
owner: Boss
prepared_by: Zero

validation targets:
- token presence is checked before submission
- expired token blocks submission
- invalid token blocks submission
- company/user context binding is checked where applicable

rules:
- token validity does not equal business acceptance
- unknown auth state must fail closed
