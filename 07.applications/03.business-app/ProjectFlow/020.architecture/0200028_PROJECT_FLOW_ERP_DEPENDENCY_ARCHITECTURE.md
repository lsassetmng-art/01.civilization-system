# ============================================================
# PROJECT FLOW ERP DEPENDENCY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines ERP dependency points and non-dependency points for ProjectFlow.

erp_dependency_domains:
- formal project reference
- formal customer reference
- formal contract or budget reference
- formal organization reference
- ERP-facing import/export mediation through BusinessOS

projectflow_depends_on_erp_for:
- formal project code when present
- formal customer reference when present
- formal budget or accounting-side view values when exposed
- ERP-origin organization or enterprise reference values
- ERP-side project synchronization through approved mediated path

projectflow_does_not_depend_on_erp_for:
- local task execution UX
- local milestone manipulation UX
- local issue and risk operation
- local memo and comment operation
- local customer-facing material composition
- local export file generation
- local report draft generation
- local template and WBS proposal generation

architecture_rules:
- ERP is a formal truth source for ERP-owned fields
- ProjectFlow is a local execution front for app-owned fields
- ERP dependency must remain mediated by BusinessOS
- ERP absence must not erase ProjectFlow local UX ownership
