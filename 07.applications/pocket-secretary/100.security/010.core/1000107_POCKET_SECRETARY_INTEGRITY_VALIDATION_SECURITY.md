# ============================================================
# POCKET SECRETARY INTEGRITY VALIDATION SECURITY
# ============================================================

status: canonical
layer: 100.security
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines integrity and validation protection rules.

rules:
- critical paths require validation before execution
- unknown authority must not be treated as valid authority
- malformed or incomplete critical payloads must not proceed as valid
- fictional success states are prohibited
- fail-closed behavior must apply when correctness cannot be verified
