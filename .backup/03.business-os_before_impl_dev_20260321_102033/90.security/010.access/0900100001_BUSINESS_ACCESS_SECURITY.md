# BUSINESS ACCESS SECURITY

status: canonical
layer: security
domain: access
owner: Boss
prepared_by: Zero

## RULES
- access must be role-based
- access scope must be explicit
- revoked role assignment must invalidate dependent access
- implicit privilege escalation is prohibited
- sensitive actions require auditable identity resolution
