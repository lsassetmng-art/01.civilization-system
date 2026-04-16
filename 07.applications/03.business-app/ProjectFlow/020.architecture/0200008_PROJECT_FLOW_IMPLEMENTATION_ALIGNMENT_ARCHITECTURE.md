# ============================================================
# PROJECT FLOW IMPLEMENTATION ALIGNMENT ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Explains how implementation modules align with architecture responsibilities.

alignment_summary:
- operational screens belong to ui-feature-screens
- core business rules belong to separated domain modules
- shared BusinessOS boundary belongs to integration-boundary
- export/report logic belongs to export-report-domain
- sync orchestration belongs to sync-domain

architectural_constraints:
- UI must not directly call shared BusinessOS transport
- domain modules must not own Android view concerns
- integration-boundary must not own screen state
- report generation must remain editable after draft creation
