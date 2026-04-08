# ============================================================
# POCKET SECRETARY FAIL CLOSED CONSTITUTION
# ============================================================

status: canonical
layer: 010.constitution
system: pocket-secretary
owner: Boss
prepared_by: Zero

principle:
When correctness, permission, or state integrity
cannot be verified, PocketSecretary must fail closed.

requirements:
- ambiguous authority must block critical execution
- sync uncertainty must not be treated as confirmed success
- missing verification must prevent real-world submission
- unsafe fallback behavior is prohibited

acceptable degraded behavior:
- local draft preservation
- pending state display
- retry queueing where bounded
- user re-confirmation request

prohibitions:
- treating unknown as approved
- treating partial sync as final success
- masking failure with fictional success states
