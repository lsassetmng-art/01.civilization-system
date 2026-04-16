# ============================================================
# PROJECT FLOW RUNTIME DEPLOYMENT DEPENDENCY NOTE
# ============================================================

status: canonical
layer: infrastructure
application: ProjectFlow
owner: Boss
prepared_by: Zero

runtime_dependencies:
- local operational datastore
- background work execution facility
- file generation/output facility
- shared BusinessOS network boundary
- permission/session provider

dependency_rules:
- shared BusinessOS availability impacts sync and import/export
- local domain operations should remain operable even when sync path is unavailable
- export/report generation may use local data snapshot when allowed
