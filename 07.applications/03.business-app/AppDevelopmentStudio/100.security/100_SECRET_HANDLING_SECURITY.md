# ============================================================
# SECRET HANDLING SECURITY
# ============================================================

status: canonical-draft
layer: security
application: App Development Studio

secret_scope:
- DB connection secrets
- Git credentials
- remote execution tokens
- storage credentials

principles:
- secrets should not be stored as plain display values where avoidable
- connection profile and secret reference should be separated
- secret exposure in logs should be avoided
