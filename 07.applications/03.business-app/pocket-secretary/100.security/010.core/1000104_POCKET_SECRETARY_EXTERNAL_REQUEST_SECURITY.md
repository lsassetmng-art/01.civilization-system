# ============================================================
# POCKET SECRETARY EXTERNAL REQUEST SECURITY
# ============================================================

status: canonical
layer: 100.security
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines security requirements for outbound requests
and inbound externally meaningful responses.

rules:
- outbound request purpose and target must be explicit
- response interpretation must not over-trust transport success
- unknown or partial response state must not be treated as confirmed success
- failed or conflicted request outcomes must remain visible
