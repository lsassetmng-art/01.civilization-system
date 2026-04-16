# ============================================================
# POCKET SECRETARY SECURITY CONTROL ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: pocket-secretary
owner: Boss
prepared_by: Zero

principle:
Security and control must exist as architectural concerns,
not as afterthoughts.

control areas:
- permission checks
- state validation
- external request gating
- sensitive data handling
- sync safety
- failure handling

rules:
- critical paths must be guarded
- validation must exist before external effect
- unknown authority must not be treated as valid authority
- unsafe fallback behavior is prohibited
