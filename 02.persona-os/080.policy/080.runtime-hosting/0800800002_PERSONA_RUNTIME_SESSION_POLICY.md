# ============================================================
# PERSONA RUNTIME SESSION POLICY
# ============================================================

status: canonical
layer: policy
domain: runtime-hosting
system: persona-os
owner: Boss
prepared_by: Zero

policy_rules:
host applications are runtime consumers, not truth owners
session disposal must be explicit
stale session reuse must fail closed
