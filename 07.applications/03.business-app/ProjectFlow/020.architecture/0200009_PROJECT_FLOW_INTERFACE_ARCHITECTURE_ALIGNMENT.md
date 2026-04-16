# ============================================================
# PROJECT FLOW INTERFACE ARCHITECTURE ALIGNMENT
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Explains interface alignment with architecture.

alignment_points:
- dashboard concentrates visibility
- list screens optimize daily operation
- detail screens preserve edit/read-only boundaries
- sync screens isolate operational integration visibility
- export/report screens isolate customer-facing output concerns

rules:
- ERP-owned fields must be visually distinct
- report draft editing must remain human-centered
- export actions must stay permission-aware
