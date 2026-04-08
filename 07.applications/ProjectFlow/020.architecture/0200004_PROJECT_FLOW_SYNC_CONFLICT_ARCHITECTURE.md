# ============================================================
# PROJECT FLOW SYNC CONFLICT ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

conflict_types:
- same field modified on both sides
- ERP protected field local edit attempt
- missing ERP reference
- stale outbound payload
- deleted upstream project reference

principles:
- ERP-owned fields prefer ERP
- local-owned fields prefer ProjectFlow
- destructive overwrite is forbidden without rule
- unresolved conflict must surface in UI
