# ============================================================
# POCKET SECRETARY LOCAL STORAGE ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: pocket-secretary
owner: Boss
prepared_by: Zero

principle:
Local storage is the primary persistence surface
for PocketSecretary core workflows.

storage targets include:
- schedule data
- todo data
- notes
- archive references
- secretary configuration
- Persona-related local state where allowed
- pending external request drafts
- sync metadata

rules:
- local persistence must support offline continuity
- external confirmation state must remain distinguishable
- local cache and authoritative external state must not be conflated
- destructive overwrite must be bounded and explicit
