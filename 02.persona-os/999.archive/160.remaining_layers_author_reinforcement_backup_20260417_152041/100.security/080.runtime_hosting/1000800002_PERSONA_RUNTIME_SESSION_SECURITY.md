# ============================================================
# PERSONA RUNTIME SESSION SECURITY
# ============================================================

status: canonical
layer: security
domain: runtime-hosting
system: persona-os
owner: Boss
prepared_by: Zero

security_rules:
host session creation must be authorized
stale session reuse must fail closed
session disposal must prevent lingering access
