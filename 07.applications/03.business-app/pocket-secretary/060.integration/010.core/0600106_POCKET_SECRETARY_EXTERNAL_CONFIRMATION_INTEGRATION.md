# ============================================================
# POCKET SECRETARY EXTERNAL CONFIRMATION INTEGRATION
# ============================================================

status: canonical
layer: 060.integration
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines how PocketSecretary handles external confirmation
for bounded requests and synchronized state.

confirmation principles:
- confirmation must come from an identifiable external source
- absence of failure is not confirmation
- local optimistic state must remain distinguishable
- confirmation state must update user-visible status explicitly

rules:
- confirmation may update local state
- confirmation must not be fabricated locally
- unknown confirmation state must remain pending or unresolved
