# BUSINESS TENANT SECURITY

status: canonical
layer: security
domain: tenant
owner: Boss
prepared_by: Zero

## RULES
- tenant boundary must be explicit
- cross-tenant mutation is prohibited
- cross-tenant reference must use explicit integration rules
- tenant-scoped data access must be auditable
