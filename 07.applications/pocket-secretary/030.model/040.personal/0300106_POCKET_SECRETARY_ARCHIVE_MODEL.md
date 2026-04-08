# ============================================================
# POCKET SECRETARY ARCHIVE MODEL
# ============================================================

status: canonical
layer: 030.model
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Represents archived local items and references preserved
for later retrieval.

archive targets may include:
- notes
- documents
- checklist references
- completed records
- file references

rules:
- archive state must not mean deletion
- archive entries must remain retrievable where retained
- archival metadata must be distinguishable from active state
